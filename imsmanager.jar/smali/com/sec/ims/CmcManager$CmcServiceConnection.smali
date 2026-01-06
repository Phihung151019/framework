.class Lcom/sec/ims/CmcManager$CmcServiceConnection;
.super Ljava/lang/Object;
.source "CmcManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/CmcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmcServiceConnection"
.end annotation


# instance fields
.field private bind:Z

.field private service:Lcom/sec/ims/IImsService;

.field final synthetic this$0:Lcom/sec/ims/CmcManager;


# direct methods
.method private constructor <init>(Lcom/sec/ims/CmcManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->this$0:Lcom/sec/ims/CmcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->service:Lcom/sec/ims/IImsService;

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->bind:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/ims/CmcManager;Lcom/sec/ims/CmcManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/CmcManager$CmcServiceConnection;-><init>(Lcom/sec/ims/CmcManager;)V

    return-void
.end method


# virtual methods
.method getBind()Z
    .locals 0

    .line 123
    iget-boolean p0, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->bind:Z

    return p0
.end method

.method getService()Lcom/sec/ims/IImsService;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->service:Lcom/sec/ims/IImsService;

    return-object p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p2}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->service:Lcom/sec/ims/IImsService;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 134
    :goto_0
    iput-boolean p2, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->bind:Z

    .line 135
    iget-object p0, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->this$0:Lcom/sec/ims/CmcManager;

    invoke-static {p0, p1}, Lcom/sec/ims/CmcManager;->-$$Nest$monConnectService(Lcom/sec/ims/CmcManager;Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->service:Lcom/sec/ims/IImsService;

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->bind:Z

    .line 143
    iget-object p0, p0, Lcom/sec/ims/CmcManager$CmcServiceConnection;->this$0:Lcom/sec/ims/CmcManager;

    invoke-static {p0}, Lcom/sec/ims/CmcManager;->-$$Nest$monDisconnectService(Lcom/sec/ims/CmcManager;)V

    return-void
.end method
