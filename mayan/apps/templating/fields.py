from django import forms
from django.utils.text import format_lazy
from django.utils.translation import gettext_lazy as _

import mayan

from .classes import TemplateContextEntry
from .widgets import ModelTemplateWidget, TemplateWidget


class TemplateField(forms.CharField):
    widget = TemplateWidget

    def __init__(
        self, context_entry_name_list=None, initial_help_text='', *args,
        **kwargs
    ):
        context_entry_name_list = context_entry_name_list or ()
        self.initial_help_text = initial_help_text

        super().__init__(*args, **kwargs)

        format_string = '{initial_help_text} {template_help_text}'

        format_kwargs = {
            'initial_help_text': self.initial_help_text,
            'template_help_text': _(
                message='Use Django\'s default templating language '
                '(https://docs.djangoproject.com/en/%(django_version)s/ref/templates/builtins/). '
            ) % {
                'django_version': mayan.__django_version__
            }
        }

        context_variable_help_text = self.get_context_variable_help_text(
            context_entry_name_list=context_entry_name_list
        )

        if context_variable_help_text:
            format_string = '{initial_help_text} {template_help_text} {available_variable_help_text}'

            format_kwargs['available_variable_help_text'] = _(
                message='Available template context variables: %s'
            ) % context_variable_help_text

        self.help_text = format_lazy(
            format_string=format_string, **format_kwargs
        )

    def get_context_variable_help_text(self, context_entry_name_list):
        return TemplateContextEntry.get_as_help_text(
            entry_name_list=context_entry_name_list
        )


class ModelTemplateField(TemplateField):
    widget = ModelTemplateWidget

    def __init__(self, model, model_variable, *args, **kwargs):
        self.model = model
        self.model_variable = model_variable

        super().__init__(*args, **kwargs)

        self.widget.attrs['app_label'] = self.model._meta.app_label
        self.widget.attrs['model_name'] = self.model._meta.model_name
        self.widget.attrs['data-model-variable'] = self.model_variable

    def get_context_variable_help_text(self, **kwargs):
        variable_help_text = '{{{{ {} }}}}'.format(self.model_variable)

        result = '{}, {}'.format(
            super().get_context_variable_help_text(**kwargs),
            variable_help_text
        )

        return result
