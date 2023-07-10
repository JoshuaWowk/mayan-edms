from ..events import (
    event_document_trashed, event_trashed_document_deleted,
    event_trashed_document_restored
)
from ..models import Document, TrashedDocument

from .base import GenericDocumentTestCase


class TrashedDocumentTestCase(GenericDocumentTestCase):
    auto_upload_test_document = False

    def setUp(self):
        super().setUp()
        self._create_test_document_stub()

    def test_document_trashing(self):
        self._clear_events()

        # Trash the document.
        self.test_document.delete()
        self.assertEqual(TrashedDocument.objects.count(), 1)
        self.assertEqual(Document.valid.count(), 0)

        events = self._get_test_events()
        self.assertEqual(events.count(), 1)

        self.assertEqual(events[0].action_object, None)
        self.assertEqual(events[0].actor, self.test_document)
        self.assertEqual(events[0].target, self.test_document)
        self.assertEqual(events[0].verb, event_document_trashed.id)

    def test_trashed_document_restore(self):
        self.test_document.delete()

        self._clear_events()

        # Restore the document.
        TrashedDocument.objects.get(pk=self.test_document.pk).restore()
        self.assertEqual(TrashedDocument.objects.count(), 0)
        self.assertEqual(Document.valid.count(), 1)

        events = self._get_test_events()
        self.assertEqual(events.count(), 1)

        self.assertEqual(events[0].action_object, None)
        self.assertEqual(events[0].actor, self.test_document)
        self.assertEqual(events[0].target, self.test_document)
        self.assertEqual(events[0].verb, event_trashed_document_restored.id)

    def test_trashed_document_delete(self):
        self.test_document.delete()

        self._clear_events()

        # Delete the document.
        self.test_document.delete()
        self.assertEqual(TrashedDocument.objects.count(), 0)
        self.assertEqual(Document.valid.count(), 0)

        events = self._get_test_events()
        self.assertEqual(events.count(), 1)

        self.assertEqual(events[0].action_object, None)
        self.assertEqual(events[0].actor, self.test_document_type)
        self.assertEqual(events[0].target, self.test_document_type)
        self.assertEqual(events[0].verb, event_trashed_document_deleted.id)


class TrashedDocumentPageTestCase(GenericDocumentTestCase):
    def test_trashed_document_page_count(self):
        page_count = self.test_document.version_active.pages.count()
        self.test_document.delete()
        test_trashed_document = TrashedDocument.objects.get(
            pk=self.test_document.pk
        )
        self.assertTrue(
            test_trashed_document.version_active.pages.count(), page_count
        )


class TrashedDocumentAPITestCase(GenericDocumentTestCase):
    def test_trashed_document_api_image_url(self):
        self.test_document.delete()
        test_trashed_document = TrashedDocument.objects.get(
            pk=self.test_document.pk
        )
        self.assertTrue(test_trashed_document.get_api_image_url())
