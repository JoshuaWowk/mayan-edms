from mayan.apps.forms import form_fields, forms
from django.utils.translation import gettext_lazy as _

from ..forms import FormDocumentTypeFileMetadataDriverConfiguration


class ViewMixinDynamicConfigurationFormClass:
    def get_form_class(self):
        FormDriverArguments = self.object.stored_driver.driver_class.get_form_class()

        if not FormDriverArguments:
            # Driver does not specify a form and does not have
            # a template either. Create a dynamic form based on the argument
            # list.
            obj = self.object

            argument_values_from_settings = obj.stored_driver.driver_class.get_argument_values_from_settings()

            class FormDriverArguments(forms.Form):
                def __init__(self, *args, **kwargs):
                    super().__init__(*args, **kwargs)
                    argument_value_list = obj.get_arguments()

                    argument_name_list = list(
                        argument_value_list.keys()
                    )

                    argument_name_list.sort()

                    for argument_name in argument_name_list:
                        default_value = argument_values_from_settings.get(
                            argument_name
                        )
                        self.fields[argument_name] = form_fields.CharField(
                            help_text=_(
                                'Leave empty to use default value. '
                                'Default: %s'
                            ) % default_value,
                            required=False
                        )

        class FormDriverArgumentsMerged(
            FormDriverArguments,
            FormDocumentTypeFileMetadataDriverConfiguration
        ):
            """Model form merged with the specific transformation fields."""
            view = self

        return FormDriverArgumentsMerged
