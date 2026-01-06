.class Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;
.super Ljava/util/TimerTask;
.source "RestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/RestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/util/RestoreManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/context/util/RestoreManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/util/RestoreManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/context/util/RestoreManager;Lcom/samsung/android/hardware/context/util/RestoreManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;-><init>(Lcom/samsung/android/hardware/context/util/RestoreManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/util/RestoreManager;

    iget-object v0, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/util/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/util/RestoreManager;->onReceivedExceptionKill()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/util/RestoreManager;

    sget-object v1, Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    iput-object v1, v0, Lcom/samsung/android/hardware/context/util/RestoreManager;->mExceptionMode:Lcom/samsung/android/hardware/context/util/RestoreManager$ExceptionMode;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDiedBinder(): we waited "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/RestoreManager$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/util/RestoreManager;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/RestoreManager;->-$$Nest$fgetMAXIMUM_WAITING_TIME(Lcom/samsung/android/hardware/context/util/RestoreManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec, but the app doesn\'t resume."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RestoreManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    return-void
.end method
