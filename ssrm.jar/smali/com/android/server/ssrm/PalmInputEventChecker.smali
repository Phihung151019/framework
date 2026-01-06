.class public Lcom/android/server/ssrm/PalmInputEventChecker;
.super Ljava/lang/Object;
.source "PalmInputEventChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static TAG:Ljava/lang/String; = null

.field private static final VIEW_COVER_CLOSED:I = -0x2


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mIsEnabledRunnable:Z

.field mIsMotionUp:Z

.field mIsPalmTouch:Z

.field mPalmTouchCheckRunnable:Ljava/lang/Runnable;

.field private mWMS:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$monRecognition(Lcom/android/server/ssrm/PalmInputEventChecker;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/PalmInputEventChecker;->onRecognition(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/android/server/ssrm/PalmInputEventChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/PalmInputEventChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    .line 91
    new-instance v0, Lcom/android/server/ssrm/PalmInputEventChecker$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/PalmInputEventChecker$1;-><init>(Lcom/android/server/ssrm/PalmInputEventChecker;)V

    iput-object v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    .line 31
    iput-object p1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    .line 34
    nop

    .line 35
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 36
    iget-object v0, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mWMS:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ssrm/PalmInputEventChecker$PalmEventReceiver;-><init>(Lcom/android/server/ssrm/PalmInputEventChecker;Lcom/android/server/ssrm/PalmInputEventChecker-IA;)V

    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 37
    return-void
.end method

.method private onRecognition(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 74
    .local v0, "action":I
    iget-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 76
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    .line 77
    iget-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    if-nez v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    iput-boolean v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsEnabledRunnable:Z

    goto :goto_0

    .line 82
    :cond_2
    if-ne v0, v2, :cond_3

    .line 83
    iput-boolean v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsMotionUp:Z

    .line 84
    iget-boolean v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mIsPalmTouch:Z

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    iget-object v1, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/PalmInputEventChecker;->mPalmTouchCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method sendPalmInfo(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 114
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 115
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 116
    nop

    .line 117
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 118
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_1

    .line 120
    :try_start_0
    const-string v2, "Palm_touch"

    if-eqz p1, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "0"

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_1

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 126
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method
