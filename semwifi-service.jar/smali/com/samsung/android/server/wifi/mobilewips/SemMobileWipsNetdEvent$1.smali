.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Message;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 7
    .line 8
    .line 9
    instance-of v1, p1, Landroid/app/admin/ConnectEvent;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x26

    .line 14
    .line 15
    iput v1, v0, Landroid/os/Message;->what:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    instance-of v1, p1, Landroid/app/admin/DnsEvent;

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const/16 v1, 0x25

    .line 23
    .line 24
    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    .line 26
    :cond_2
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "network_event"

    .line 32
    .line 33
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetISemMobileWipsCallback(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;->sendServiceHandlerMessage(Landroid/os/Message;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmPaused(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    new-instance v1, Landroid/app/admin/ConnectEvent;

    .line 33
    .line 34
    move-object v2, p1

    .line 35
    move v3, p2

    .line 36
    move-wide v5, p3

    .line 37
    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmPaused(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez p6, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, p9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Landroid/app/admin/DnsEvent;

    .line 36
    .line 37
    move-object p3, p4

    .line 38
    move-object p4, p5

    .line 39
    move p5, p6

    .line 40
    move-object p6, p1

    .line 41
    invoke-direct/range {p2 .. p8}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsNetdEvent$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method
