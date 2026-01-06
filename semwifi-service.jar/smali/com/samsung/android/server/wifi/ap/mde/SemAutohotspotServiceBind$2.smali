.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->registerMcfBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
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
    const-string v0, "com.samsung.android.mcfds.SERVICE_STARTED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "MCF_SERVICE_STARTED"

    .line 20
    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "com.samsung.android.mcfds.SERVICE_STOPPED"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const-string v0, "MCF_SERVICE_STOPPED"

    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    .line 45
    .line 46
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    const-string p2, "com.samsung.android.mcf.autohotspot"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$2;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
