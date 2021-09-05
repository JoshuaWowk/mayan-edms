from django.utils.translation import ugettext_lazy as _

from mayan.apps.documents.permissions import permission_document_type_edit
from mayan.apps.navigation.classes import Link

from .icons import (
    icon_document_metadata_add, icon_document_metadata_edit,
    icon_document_metadata_remove, icon_document_metadata_view,
    icon_metadata_type_create, icon_metadata_type_delete_single,
    icon_metadata_type_delete_multiple,
    icon_metadata_type_document_type_list, icon_metadata_type_edit,
    icon_metadata_type_list, icon_document_type_metadata_type_list
)
from .permissions import (
    permission_document_metadata_add, permission_document_metadata_edit,
    permission_document_metadata_remove, permission_document_metadata_view,
    permission_metadata_type_create, permission_metadata_type_delete,
    permission_metadata_type_edit, permission_metadata_type_view
)

# Document metadata

link_metadata_add = Link(
    args='object.pk', icon=icon_document_metadata_add,
    permissions=(permission_document_metadata_add,), text=_('Metadata: add'),
    view='metadata:metadata_add',
)
link_metadata_add_multiple = Link(
    icon=icon_document_metadata_add, text=_('Metadata: add'),
    view='metadata:metadata_multiple_add'
)
link_metadata_edit = Link(
    args='object.pk', icon=icon_document_metadata_edit,
    permissions=(permission_document_metadata_edit,),
    text=_('Metadata: edit'), view='metadata:metadata_edit'
)
link_metadata_edit_multiple = Link(
    icon=icon_document_metadata_edit, text=_('Metadata: edit'),
    view='metadata:metadata_multiple_edit'
)
link_metadata_remove = Link(
    args='object.pk', icon=icon_document_metadata_remove,
    permissions=(permission_document_metadata_remove,),
    text=_('Metadata: remove'), view='metadata:metadata_remove',
)
link_metadata_remove_multiple = Link(
    icon=icon_document_metadata_remove, text=_('Metadata: remove'),
    view='metadata:metadata_multiple_remove'
)
link_metadata_view = Link(
    args='resolved_object.pk', icon=icon_document_metadata_view,
    permissions=(permission_document_metadata_view,), text=_('Metadata'),
    view='metadata:metadata_view',
)

# Document type

link_document_type_metadata_type_relationship = Link(
    args='resolved_object.pk',
    icon=icon_document_type_metadata_type_list,
    permissions=(permission_document_type_edit,),
    text=_('Metadata types'),
    view='metadata:document_type_metadata_type_relationship',
)

# Metadata type

link_metadata_type_document_type_relationship = Link(
    args='resolved_object.pk',
    icon=icon_metadata_type_document_type_list,
    permissions=(permission_document_type_edit,),
    text=_('Document types'),
    view='metadata:metadata_type_document_type_relationship',
)
link_metadata_type_create = Link(
    icon=icon_metadata_type_create,
    permissions=(permission_metadata_type_create,), text=_('Create new'),
    view='metadata:metadata_type_create'
)
link_metadata_type_delete_single = Link(
    args='object.pk', icon=icon_metadata_type_delete_single,
    permissions=(permission_metadata_type_delete,),
    tags='dangerous', text=_('Delete'),
    view='metadata:metadata_type_delete_single',
)
link_metadata_type_delete_multiple = Link(
    icon=icon_metadata_type_delete_multiple,
    text=_('Delete'), view='metadata:metadata_type_delete_multiple'
)
link_metadata_type_edit = Link(
    args='object.pk', icon=icon_metadata_type_edit,
    permissions=(permission_metadata_type_edit,),
    text=_('Edit'), view='metadata:metadata_type_edit'
)
link_metadata_type_list = Link(
    icon=icon_metadata_type_list,
    permissions=(permission_metadata_type_view,),
    text=_('Metadata types'), view='metadata:metadata_type_list'
)
