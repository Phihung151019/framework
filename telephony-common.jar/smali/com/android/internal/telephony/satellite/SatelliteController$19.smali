.class Lcom/android/internal/telephony/satellite/SatelliteController$19;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/SatelliteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/SatelliteController;


# direct methods
.method public static synthetic blacklist $r8$lambda$B-xCc8VAi2InXNVFau2ZU7bxH9Y(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .line 7737
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7738
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uYKXq3PLwzG6Pe61eMWvTbJn3DE(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0

    .line 7728
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 7730
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 7729
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$wLIdHEG-OteVQFjn8xLxcTyeKvo(Lcom/android/internal/telephony/satellite/SatelliteController$19;)Landroid/content/Intent;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteController$19;->lambda$onReceive$2()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/SatelliteController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 7708
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onReceive$2()Landroid/content/Intent;
    .locals 1

    .line 7741
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    const-string v0, "showSatelliteSystemNotification: no default sms package name, Invoke default sms compose window instead"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mploge(Lcom/android/internal/telephony/satellite/SatelliteController;Ljava/lang/String;)V

    .line 7743
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7744
    const-string v0, "sms:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 7711
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 7712
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7713
    const-string p0, "Received empty action from the notification"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 7721
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v3, v2

    goto :goto_1

    :sswitch_0
    const-string v4, "open_message_button"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "action_notification_dismiss"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "how_it_works_button"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 7726
    :pswitch_0
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 7725
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 7726
    invoke-virtual {p2, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    .line 7735
    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/satellite/SatelliteController$19;)V

    .line 7740
    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 7747
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    .line 7750
    :pswitch_2
    const-string v1, "SUBID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 7751
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SATELLITE_SETTING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7752
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 7753
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7754
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7760
    :goto_2
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19;->this$0:Lcom/android/internal/telephony/satellite/SatelliteController;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->-$$Nest$mdismissNotificationAndUpdatePref(Lcom/android/internal/telephony/satellite/SatelliteController;Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fcce8cc -> :sswitch_2
        -0x39847e61 -> :sswitch_1
        0x640108ff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
