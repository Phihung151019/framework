.class Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;
.super Ljava/lang/Object;
.source "ServiceInitializer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/ServiceInitializer;->bindToServiceSync()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/ServiceInitializer;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/ServiceInitializer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/ServiceInitializer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;->this$0:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 134
    invoke-static {}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;->this$0:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->-$$Nest$munbindService(Lcom/samsung/android/camerax/advanced/ServiceInitializer;)V

    .line 137
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 120
    invoke-static {}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;->this$0:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-static {v0, p2}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->-$$Nest$mfinishConnection(Lcom/samsung/android/camerax/advanced/ServiceInitializer;Landroid/os/IBinder;)V

    .line 123
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 127
    invoke-static {}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;->this$0:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->-$$Nest$munbindService(Lcom/samsung/android/camerax/advanced/ServiceInitializer;)V

    .line 130
    return-void
.end method
