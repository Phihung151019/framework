.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;
.super Lcom/samsung/android/mcf/SubscribeCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/SubscribeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMcfServiceStateChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/SubscribeCallback;->onMcfServiceStateChanged(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne v0, p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1, v0}, Lcom/samsung/android/mcf/McfSubscriber;->isNetworkEnabled(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Z)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string p2, "-ME--- onMcfServiceStateChanged, status : "

    .line 32
    .line 33
    const-string v0, " network:"

    .line 34
    .line 35
    invoke-static {p2, p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const-string p2, "WifiProfileShare.McfSub"

    .line 46
    .line 47
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
