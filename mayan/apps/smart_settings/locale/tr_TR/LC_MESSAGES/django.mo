��    $      <  5   \      0     1  B  I  d   �    �  Z   �  ^   Y  8   �  �   �  �   �	     u
     v     }     �     �     �     �  =   �  `        e     j  
   �  
   �     �     �     �     �     �  d   �  `   `     �  O   �           &     4  x  <  s  �      )  c  J  �   �  �  <  u   �  k   I  Q   �  �       �  4  �                    +  
   >     I  G   d  {   �     (     .     I     V     k     y     �     �     �  `   �  {   3     �  c   �     $     +     B  �  I                                   #   	                                    
                                  $              !       "                                                   "%s" not a valid entry. A dictionary containing the settings for all databases to be used with Django. It is a nested dictionary whose contents map a database alias to a dictionary containing the options for an individual database. The DATABASES setting must configure a default database; any number of additional databases may also be specified. A list of authentication backend classes (as strings) to use when attempting to authenticate a user. A list of strings representing the host/domain names that this site can serve. This is a security measure to prevent HTTP Host header attacks, which are possible even under many seemingly-safe web server configurations. Values in this list can be fully qualified names (e.g. 'www.example.com'), in which case they will be matched against the request's Host header exactly (case-insensitive, not including port). A value beginning with a period can be used as a subdomain wildcard: '.example.com' will match example.com, www.example.com, and any other subdomain of example.com. A value of '*' will match anything; in this case you are responsible to provide your own validation of the Host header (perhaps in a middleware; if so this middleware must be listed first in MIDDLEWARE). Default: 'django.contrib.sessions.backends.db'. Controls where Django stores session data. Default: 'django.core.mail.backends.smtp.EmailBackend'. The backend to use for sending emails. Default: 'localhost'. The host to use for sending email. Default: 'sessionid'. The name of the cookie to use for sessions.This can be whatever you want (as long as it's different from the other cookie names in your application). Default: 'webmaster@localhost' Default email address to use for various automated correspondence from the site manager(s). This doesn't include error messages sent to ADMINS and MANAGERS; for that, see SERVER_EMAIL. Default: [] (Empty list). List of compiled regular expression objects representing User-Agent strings that are not allowed to visit any page, systemwide. Use this for bad robots/crawlers. This is only used if CommonMiddleware is installed (see Middleware). Django Edit Edit setting: %s Edit settings English Enter the new setting value. Is this settings being overridden by an environment variable? Local storage is currently disabled, changes to setting values will not be saved or take effect. Name Namespace: %s, not found Namespaces Overridden Setting count Setting namespaces Setting updated successfully. Settings Settings in namespace: %s Settings inherited from an environment variable take precedence and cannot be changed in this view.  Settings updated, restart your installation and refresh your browser for changes to take effect. Smart settings The list of validators that are used to check the strength of user's passwords. Value View settings Warning When set to True, if the request URL does not match any of the patterns in the URLconf and it doesn't end in a slash, an HTTP redirect is issued to the same URL with a slash appended. Note that the redirect may cause any data submitted in a POST request to be lost. The APPEND_SLASH setting is only used if CommonMiddleware is installed (see Middleware). See also PREPEND_WWW. Project-Id-Version: Mayan EDMS
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2022-07-27 05:38+0000
Last-Translator: Bedreddin Şahbaz, 2022
Language-Team: Turkish (Turkey) (https://www.transifex.com/rosarior/teams/13584/tr_TR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: tr_TR
Plural-Forms: nplurals=2; plural=(n > 1);
 "%s" geçerli bir giriş değil. Django ile kullanılacak tüm veritabanlarının ayarlarını içeren bir sözlük. İçeriği, bir veritabanı takma adını tek bir veritabanı için seçenekleri içeren bir sözlüğe eşleyen iç içe bir sözlüktür. VERİTABANLARI ayarı varsayılan bir veritabanını yapılandırmalıdır; herhangi bir sayıda ek veri tabanı da belirtilebilir. Bir kullanıcının kimliğini doğrulamaya çalışırken kullanılacak kimlik doğrulama backend sınıflarının (dizeler olarak) listesi. Bu sitenin sunabileceği ana bilgisayar/etki alanı adlarını temsil eden dizelerin listesi. Bu, görünüşte güvenli birçok web sunucusu yapılandırmasında bile mümkün olan HTTP Host başlık saldırılarını önlemek için bir güvenlik önlemidir. Bu listedeki değerler tam olarak nitelenmiş adlar olabilir (örneğin 'www.example.com'), bu durumda bunlar isteğin Ana Bilgisayar başlığıyla tam olarak eşleştirilir (büyük/küçük harfe duyarlı değildir, bağlantı noktası dahil değildir). Alt alan joker karakteri olarak nokta ile başlayan bir değer kullanılabilir: '.example.com' example.com, www.example.com ve example.com'un diğer herhangi bir alt alanıyla eşleşir. '*' değeri her şeyle eşleşir; bu durumda, Host başlığı için kendi doğrulamanızı sağlamaktan sorumlusunuz (belki bir ara yazılımda; öyleyse bu ara yazılım ilk olarak MIDDLEWARE'de listelenmelidir). Varsayılan: 'django.contrib.sessions.backends.db'. Django'nun oturum verilerini nerede sakladığını kontrol eder. Varsayılan: 'django.core.mail.backends.smtp.EmailBackend'. E-posta göndermek için kullanılacak backend. Varsayılan: 'localhost';. E-posta göndermek için kullanılacak ana bilgisayar. Varsayılan: 'sessionid'. Oturumlar için kullanılacak tanımlama bilgisinin adı. Bu, istediğiniz her şey olabilir (uygulamanızdaki diğer tanımlama bilgisi adlarından farklı olduğu sürece). Varsayılan: 'webmaster@localhost' Site yöneticisinden/yöneticilerinden çeşitli otomatik yazışmalar için kullanılacak varsayılan e-posta adresi. Bu, ADMIN ve YÖNETİCİLER'e gönderilen hata mesajlarını içermez; (bunun için bkz. SERVER_EMAIL). Varsayılan: [] (Boş liste). Sistem genelinde herhangi bir sayfayı ziyaret etmesine izin verilmeyen User-Agent dizelerini temsil eden derlenmiş düzenli ifade nesnelerinin listesi. Bunu kötü robotlar/tarayıcılar için kullanın. Bu, yalnızca CommonMiddleware kuruluysa kullanılır (bkz. Middleware). Django Düzenle Ayarı düzenle: %s Ayarları düzenle İngilizce Yeni ayar değerini girin. Bu ayarlar bir ortam değişkeni tarafından geçersiz kılınıyor mu? Yerel depolama şu anda devre dışı, ayar değerlerinde yapılan değişiklikler kaydedilmeyecek veya geçerli olmayacak. İsim Ad alanı: %s, bulunamadı Ad alanları Geçersiz kılındı Ayar sayısı Alan adları ayarı Ayar başarıyla güncellendi. Ayarlar %sİsim alanındaki ayarlar:  Bir ortam değişkeninden devralınan ayarlar önceliklidir ve bu görünümde değiştirilemez. Ayarlar güncellendi, kurulumunuzu yeniden başlatın ve değişikliklerin etkili olması için tarayıcınızı yenileyin. Akıllı ayarlar Kullanıcı parolalarının gücünü kontrol etmek için kullanılan doğrulayıcıların listesi. Değer Ayarları görüntüle Uyarı True olarak ayarlandığında, istek URL'si URLconf'taki kalıplardan herhangi biriyle eşleşmiyorsa ve "/" ile bitmiyorsa, aynı URL'ye "/" eklenmiş bir HTTP yönlendirmesi verilir. Yönlendirmenin, bir POST isteğinde gönderilen verilerin kaybolmasına neden olabileceğini unutmayın. APPEND_SLASH ayarı yalnızca CommonMiddleware kuruluysa kullanılır (bkz. Middleware). Ayrıca bkz. PREPEND_WWW. 