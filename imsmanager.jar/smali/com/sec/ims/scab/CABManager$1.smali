.class Lcom/sec/ims/scab/CABManager$1;
.super Ljava/lang/Object;
.source "CABManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/scab/CABManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/scab/CABManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 68
    invoke-static {p2}, Lcom/sec/ims/scab/ICABService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/scab/ICABService;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/scab/CABManager;->-$$Nest$sfputmImsCABService(Lcom/sec/ims/scab/ICABService;)V

    .line 69
    const-string p1, "CABManager"

    const-string p2, "Connected to CABService."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {p1}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {p0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Lcom/sec/ims/scab/CABManager;->-$$Nest$sfputmImsCABService(Lcom/sec/ims/scab/ICABService;)V

    .line 83
    const-string p1, "CABManager"

    const-string v0, "Disconnected to CABService."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {p1}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p0, p0, Lcom/sec/ims/scab/CABManager$1;->this$0:Lcom/sec/ims/scab/CABManager;

    invoke-static {p0}, Lcom/sec/ims/scab/CABManager;->-$$Nest$fgetmListener(Lcom/sec/ims/scab/CABManager;)Lcom/sec/ims/scab/CABManager$CABServiceListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/scab/CABManager$CABServiceListener;->onDisconnected()V

    :cond_0
    return-void
.end method
