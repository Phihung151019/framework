.class Lcom/sec/epdg/EpdgManager$3;
.super Ljava/lang/Object;
.source "EpdgManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/epdg/EpdgManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected () ComponentName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz p2, :cond_0

    .line 314
    const-string v0, "mEpdgConnection onServiceConnected() : service is connected."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {p2}, Lcom/sec/epdg/IEpdgManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fputmService(Lcom/sec/epdg/EpdgManager;Lcom/sec/epdg/IEpdgManager;)V

    .line 316
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/EpdgManager$ConnectionListener;->onConnected()V

    goto :goto_0

    .line 320
    :cond_0
    const-string v0, "mEpdgConnection onServiceConnected() : service is null."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->connectService()V

    .line 323
    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 291
    const-string v0, "onServiceDisconnected"

    const-string v1, "EPDG_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fputmService(Lcom/sec/epdg/EpdgManager;Lcom/sec/epdg/IEpdgManager;)V

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 0) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v3}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v2}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ePDG Listener (PhoneID 1) : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v3}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v2}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmListeners2(Lcom/sec/epdg/EpdgManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/sec/epdg/EpdgManager$3;->this$0:Lcom/sec/epdg/EpdgManager;

    invoke-static {v0}, Lcom/sec/epdg/EpdgManager;->-$$Nest$fgetmConnListener(Lcom/sec/epdg/EpdgManager;)Lcom/sec/epdg/EpdgManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/epdg/EpdgManager$ConnectionListener;->onDisconnected()V

    .line 308
    :cond_2
    return-void
.end method
