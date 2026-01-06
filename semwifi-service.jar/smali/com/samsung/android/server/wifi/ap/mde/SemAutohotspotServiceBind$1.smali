.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "onServiceConnected"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fputiSemAutohotspotMcfService(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fputiSemAutohotspotMcfBinded(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Z)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 28
    .line 29
    const/16 p1, 0x32

    .line 30
    .line 31
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->retryCount:I

    .line 32
    .line 33
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Service has unexpectedly disconnected"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fputiSemAutohotspotMcfService(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Lcom/samsung/android/mcf/autohotspot/ISemAutohotspotMcf;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fputiSemAutohotspotMcfBinded(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$1;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;

    .line 25
    .line 26
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->retryCount:I

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    sub-int/2addr p1, v0

    .line 30
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->retryCount:I

    .line 31
    .line 32
    if-lez p1, :cond_0

    .line 33
    .line 34
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;->-$$Nest$fgetmyHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotServiceBind$MyHandler;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-wide/16 v1, 0x2710

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
