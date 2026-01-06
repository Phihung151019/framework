.class public Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "ActivityLocationLoggingImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;,
        Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;
    }
.end annotation


# static fields
.field private static final MAXIMUM_WAITING_TIME:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider.ActivityLocationLoggingImpl"


# instance fields
.field private mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExceptionMode(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;)Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExceptionMode(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 50
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 41
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .line 52
    return-void
.end method


# virtual methods
.method public add()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    goto :goto_0

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->add()V

    .line 68
    :goto_0
    return-void
.end method

.method public handleDiedBinder()V
    .locals 4

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDiedBinder() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.CaeProvider.ActivityLocationLoggingImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    sget-object v1, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    if-ne v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 92
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$CustomTimer;-><init>(Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl-IA;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 94
    .end local v0    # "timer":Ljava/util/Timer;
    :cond_0
    return-void
.end method

.method public onBinderDied()V
    .locals 2

    .line 77
    sget-object v0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;->KILL:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() : mExceptionMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl;->mExceptionMode:Lcom/samsung/android/hardware/context/provider/caeprovider/ActivityLocationLoggingImpl$ExceptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.CaeProvider.ActivityLocationLoggingImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method
