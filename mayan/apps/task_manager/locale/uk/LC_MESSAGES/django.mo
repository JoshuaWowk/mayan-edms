��          �      \      �  	   �     �     �     �  2     �   ;     �  �   �          �     �     �     �  
   �     �  
   �     �  
   �     �  A  �     6  &   I     p  +   }  u   �      �  >	  �  =     �     �  0   �  
   $     /     7     M     m     �  '   �  "   �                         
                                                         	                 Arguments Background task queues Celery Default queue? Default: "AMQPLAIN". Set custom amqp login method. Default: "Disabled". Toggles SSL usage on broker connection and SSL settings. The valid values for this option vary by transport. Default: "amqp://". Default broker URL. This must be a URL in the form of: transport://userid:password@hostname:port/virtual_host Only the scheme part (transport://) is required, the rest is optional, and defaults to the specific transports default values. Default: No result backend enabled by default. The backend used to store task results (tombstones). Refer to http://docs.celeryproject.org/en/v4.1.0/userguide/configuration.html#result-backend Host Is transient? Keyword arguments Label Name Start time Task manager Test queue Type View tasks Worker process ID Project-Id-Version: PACKAGE VERSION
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-01-05 02:56+0000
Last-Translator: Leo Lado, 2024
Language-Team: Ukrainian (https://app.transifex.com/rosarior/teams/13584/uk/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: uk
Plural-Forms: nplurals=4; plural=(n % 1 == 0 && n % 10 == 1 && n % 100 != 11 ? 0 : n % 1 == 0 && n % 10 >= 2 && n % 10 <= 4 && (n % 100 < 12 || n % 100 > 14) ? 1 : n % 1 == 0 && (n % 10 ==0 || (n % 10 >=5 && n % 10 <=9) || (n % 100 >=11 && n % 100 <=14 )) ? 2: 3);
 Аргументи Фонові черги завдань Селера Черга за замовчуванням? Типове значення: "AMQPLAIN". Встановити спеціальний метод входу в amqp. За замовчуванням: "Disabled". Перемикає використання SSL при підключенні до брокера та налаштування SSL. Допустимі значення для цієї опції залежать від транспорту. За замовчуванням: "amqp://". URL-адреса брокера за умовчанням. Це має бути URL-адреса у такому вигляді: transport://userid:password@hostname:port/virtual_host Потрібна лише частина схеми (transport://), решта є необов’язковою та за замовчуванням використовується для конкретних транспортних значень за замовчуванням. За замовчуванням: За замовчуванням не включено жодного резервного кінцевого пункту. Кінцевий пункт, який використовується для зберігання результатів завдань (надгробки). Див. http://docs.celeryproject.org/en/v4.1.0/userguide/configuration.html#result-backend Хост Перехідний? Аргументи ключового слова Мітка Ім'я Час початку Менеджер завдань Тестова черга Тип Переглянути завдання ID робочого процесу 