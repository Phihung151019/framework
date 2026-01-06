.class Lcom/samsung/android/mcf/McfContext$3;
.super Ljava/lang/Object;
.source "McfContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/McfContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/McfContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/mcf/McfContext;

    .line 356
    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 359
    const-string v0, "onServiceConnected"

    const-string v1, "-"

    const-string v2, "McfContext"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    invoke-static {p2}, Lcom/samsung/android/mcf/IMcfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/IMcfService;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 361
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 366
    const-string v0, "onServiceDisconnected"

    const-string v1, "-"

    const-string v2, "McfContext"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/mcf/McfContext;->mMcfService:Lcom/samsung/android/mcf/IMcfService;

    .line 368
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$3;->this$0:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    return-void
.end method
