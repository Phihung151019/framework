.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaAccountBR"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "rcvd:"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    const-string v0, "com.samsung.android.mcf.autohotspot"

    .line 27
    .line 28
    if-eqz p2, :cond_0

    .line 29
    .line 30
    new-instance p1, Landroid/content/Intent;

    .line 31
    .line 32
    const-string p2, "com.samsung.account.mcf.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    new-instance p1, Landroid/content/Intent;

    .line 59
    .line 60
    const-string p2, "com.samsung.account.mcf.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$SaAccountBR;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method
