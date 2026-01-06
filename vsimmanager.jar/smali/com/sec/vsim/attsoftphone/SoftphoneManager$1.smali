.class Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;
.super Ljava/lang/Object;
.source "SoftphoneManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/SoftphoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;


# direct methods
.method constructor <init>(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/vsim/attsoftphone/SoftphoneManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 45
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    invoke-static {p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->-$$Nest$fputmSoftphoneService(Lcom/sec/vsim/attsoftphone/SoftphoneManager;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V

    .line 46
    const-string v0, "SoftphoneManager"

    const-string v1, "Connected to SoftphoneService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    invoke-static {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->-$$Nest$fgetmListener(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    invoke-static {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->-$$Nest$fgetmListener(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;->onConnected()V

    .line 50
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 54
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->-$$Nest$fputmSoftphoneService(Lcom/sec/vsim/attsoftphone/SoftphoneManager;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V

    .line 55
    const-string v0, "SoftphoneManager"

    const-string v1, "Disconnected to SoftphoneService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    invoke-static {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->-$$Nest$fgetmListener(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sec/vsim/attsoftphone/SoftphoneManager$1;->this$0:Lcom/sec/vsim/attsoftphone/SoftphoneManager;

    invoke-static {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager;->-$$Nest$fgetmListener(Lcom/sec/vsim/attsoftphone/SoftphoneManager;)Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/vsim/attsoftphone/SoftphoneManager$SoftphoneServiceListener;->onDisconnected()V

    .line 59
    :cond_0
    return-void
.end method
