.class Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingResetBR"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

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
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Ljava/lang/String;

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
    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monSettingsSoftReset(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
