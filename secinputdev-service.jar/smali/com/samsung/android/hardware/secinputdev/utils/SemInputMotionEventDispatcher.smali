.class public Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
.super Ljava/lang/Object;
.source "SemInputMotionEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;,
        Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputMotionEventDispatcher"

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;


# instance fields
.field private final cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

.field private final context:Landroid/content/Context;

.field private inputEventReceiver:Landroid/view/InputEventReceiver;

.field private final inputHandlerThread:Landroid/os/HandlerThread;

.field private inputMonitor:Landroid/view/InputMonitor;

.field private isRegistered:Z

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final registerLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static bridge synthetic -$$Nest$fgetisRegistered(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->isRegistered:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->isRegistered:Z

    .line 37
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemInputMotionEventDispatcher"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    return-void
.end method

.method private checkSecurityPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 63
    const-string v0, "SemInputMotionEventDispatcher"

    const-string v1, "SemInputMotionEventDispatcher only available from system UID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v2

    .line 67
    :cond_0
    const-string v0, "secinputdev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_1
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    return-object v0
.end method

.method public static isCreated()Z
    .locals 1

    .line 55
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private registerInputEventReceiver()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->context:Landroid/content/Context;

    const-string v1, "SemInputMotionEventDispatcher"

    if-nez v0, :cond_0

    .line 150
    const-string v0, "registerInputEventReceiver: context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 156
    .local v0, "displayId":I
    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const-string v3, "secinputdev"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    .line 157
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-nez v2, :cond_1

    .line 158
    return-void

    .line 161
    :cond_1
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$MyInputEventReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventReceiver: displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .line 167
    return-void

    .line 163
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "registerInputEventReceiver"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 165
    throw v2
.end method

.method private unregisterInputEventReceiver()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    const-string v1, "SemInputMotionEventDispatcher"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 172
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    .line 173
    const-string v0, "unregisterInputEventReceiver: dispose InputEventReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 177
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    .line 178
    const-string v0, "unregisterInputEventReceiver: dispose InputMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 207
    const-string v0, "dumping SemInputMotionEventDispatcher"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "- "

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "copiedListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;>;"
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    const-string v1, "- registered listeners"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 220
    .local v2, "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .end local v2    # "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    goto :goto_0

    .line 222
    :cond_1
    return-void

    .line 213
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getQueue()Ljava/util/Queue;

    move-result-object v0

    .line 226
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- canceled MotionEvent: max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getMaxQueueSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 229
    .local v2, "data":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_0

    .line 231
    :cond_0
    const-string v1, "  end canceled"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    :cond_1
    return-void
.end method

.method public pilferPointers(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 134
    if-eqz p1, :cond_2

    .line 135
    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->checkSecurityPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 141
    const-string v1, "SemInputMotionEventDispatcher"

    const-string v2, "cancel"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;

    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    .line 144
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only SemInput service can use it"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_2
    :goto_0
    return-void
.end method

.method public registerMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 74
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 75
    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->checkSecurityPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "sizeOfListeners":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "SemInputMotionEventDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerMotionEventListener: already registered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    return v0

    .line 87
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    .line 89
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-nez v2, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerInputEventReceiver()V

    .line 93
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->isRegistered:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .end local v1    # "sizeOfListeners":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    nop

    .line 97
    const-string v1, "SemInputMotionEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMotionEventListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v0

    .line 89
    .restart local v1    # "sizeOfListeners":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
    .end local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    .end local v1    # "sizeOfListeners":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
    .restart local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    throw v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only SemInput service can use it"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3
    return v0
.end method

.method public unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    .locals 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 104
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 105
    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->checkSecurityPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, "sizeOfListeners":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    return v0

    .line 116
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 117
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 118
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :try_start_3
    const-string v2, "SemInputMotionEventDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterMotionEventListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-nez v1, :cond_1

    .line 122
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->isRegistered:Z

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->unregisterInputEventReceiver()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .end local v1    # "sizeOfListeners":I
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 127
    nop

    .line 128
    const/4 v0, 0x1

    return v0

    .line 118
    .restart local v1    # "sizeOfListeners":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
    .end local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 126
    .end local v1    # "sizeOfListeners":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;
    .restart local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/utils/SemInputMotionEventDispatcher;->registerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 127
    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only SemInput service can use it"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    return v0
.end method
