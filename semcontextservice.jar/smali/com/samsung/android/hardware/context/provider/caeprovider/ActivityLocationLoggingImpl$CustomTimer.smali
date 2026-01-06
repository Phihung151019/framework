.class Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;
.super Ljava/util/TimerTask;
.source "ActivityLocationLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->-$$Nest$fgetmExceptionMode(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;)Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->remove()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;->this$0:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;

    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->-$$Nest$fputmExceptionMode(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;)V

    .line 110
    const-string v0, "SemContext.CaeProvider.ActivityLocationLoggingImpl"

    const-string v1, "handleDiedBinder(): we waited 60000 msec, but the app doesn\'t resume."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    return-void
.end method
