-injars classes.jar
-outjars sdk\im95ykf_android_sdk_v4.jar

-libraryjars 'E:\95zxkf\java 混淆工具\android.jar'
-libraryjars 'E:\95zxkf\java 混淆工具\android-support-v4.jar'

-dontoptimize
-dontusemixedcaseclassnames
-keepattributes *Annotation*
-dontpreverify
-verbose
-dontwarn android.support.**


# -keep public class com.google.vending.licensing.ILicensingService
# -keep public class com.android.vending.licensing.ILicensingService
# keep setters in Views so that animations can still work.
# see http://proguard.sourceforge.net/manual/examples.html#beans
-keepclassmembers public class * extends android.view.View {
    void set*(***);
    *** get*();
}

# We want to keep methods in Activity that could be used in the XML attribute onClick
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}

-keep class * extends android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

# keep the third side jar
-keep class com.appkefu.org.** {
    <fields>;
    <methods>;
}

-keep class com.appkefu.smack.** {
    <fields>;
    <methods>;
}

-keep class com.appkefu.smackx.** {
    <fields>;
    <methods>;
}

-keep class com.appkefu.measite.** {
    <fields>;
    <methods>;
}

-keep class com.appkefu.novell.** {
    <fields>;
    <methods>;
}

-keep class com.appkefu.OpenUDID.* {
    <fields>;
    <methods>;
}

-keep class com.appkefu.lib.interfaces.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.db.KFMessageHelper {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.image.*

-keep class com.appkefu.lib.receivers.*

-keep class com.appkefu.lib.service.KFMainService {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.service.KFMainService$LocalBinder {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.service.KFDownloadService {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.utils.KFSettingsManager {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.service.KFXmppManager {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.ui.activity.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.ui.entity.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.utils.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.ui.widgets.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.soundrecorder.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.xmpp.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.xmpp.iq.* {
    public static <fields>;
    public <methods>;
}

-keep class com.appkefu.lib.ui.widgets.KFResizeLayout {
    <fields>;
    <methods>;
}

-keep class com.appkefu.lib.ui.pulltorefresh.* {
    <fields>;
    <methods>;
}

-keep class com.appkefu.lib.ui.pulltorefresh.internal.* {
    <fields>;
    <methods>;
}

-keepclassmembers class * extends android.webkit.WebChromeClient {
    public void openFileChooser(...);
}

# Also keep - Enumerations. Keep the special static methods that are required in
# enumeration classes.
-keepclassmembers enum  * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep names - Native method names. Keep all native class/method names.
-keepclasseswithmembers,allowshrinking class * {
    native <methods>;
}
