.class public Lcom/samsung/android/wfd/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;,
        Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;,
        Lcom/samsung/android/wfd/WFDUibcManager$EventQueue;,
        Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;,
        Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;,
        Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;,
        Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final INPUT_GENERIC_KEY_DOWN:I = 0x3

.field private static final INPUT_GENERIC_KEY_UP:I = 0x4

.field private static final INPUT_GENERIC_ROTATE:I = 0x8

.field private static final INPUT_GENERIC_SCROLL_HORIZONTAL:I = 0x7

.field private static final INPUT_GENERIC_SCROLL_VERTICAL:I = 0x6

.field private static final INPUT_GENERIC_TOUCH_DOWN:I = 0x0

.field private static final INPUT_GENERIC_TOUCH_MOVE:I = 0x2

.field private static final INPUT_GENERIC_TOUCH_UP:I = 0x1

.field private static final INPUT_GENERIC_ZOOM:I = 0x5

.field private static final MOTION_EVENT_CANCEL:I = 0x63

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"

.field private static final TIMEOUT_BUSY_POLLING:I = 0x64

.field private static final TIMEOUT_FREE_POLLING:I = 0xbb8

.field private static mLibraryLoaded:Z


# instance fields
.field private mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

.field private mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private mExternalDisplayHeight:F

.field private mExternalDisplayWidth:F

.field private final mIsFlipModel:Z

.field private mIsSamsungMobile:Z

.field private mTimeoutForPollingEvent:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectionMode(Lcom/samsung/android/wfd/WFDUibcManager;)Lcom/samsung/android/wfd/ConnectionMode;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mTimeoutForPollingEvent:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTimeoutForPollingEvent(Lcom/samsung/android/wfd/WFDUibcManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mTimeoutForPollingEvent:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->mLibraryLoaded:Z

    .line 57
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 75
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mTimeoutForPollingEvent:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    .line 80
    iput v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    .line 83
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FLIP"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsFlipModel:Z

    .line 115
    sput-object p1, Lcom/samsung/android/wfd/ConnectionMode;->mContext:Landroid/content/Context;

    .line 116
    const-string v0, "WFDUibcManager"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private clearInstance()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    .line 211
    return-void
.end method

.method private static loadLibrary()V
    .locals 3

    .line 47
    sget-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    .line 49
    :try_start_0
    const-string v0, "uibcmanager_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/wfd/WFDUibcManager;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load the native library : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WFDUibcManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    :goto_0
    return-void
.end method

.method private native nativeStartUIBC()V
.end method

.method private native nativeStopUIBC()V
.end method

.method private setDexMode()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    return-void

    .line 284
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->closeConnection()V

    .line 285
    new-instance v0, Lcom/samsung/android/wfd/DeXMode;

    invoke-direct {v0}, Lcom/samsung/android/wfd/DeXMode;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerIntentFilter()V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerDisplayChangedListener()V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    iget v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    iget v2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wfd/ConnectionMode;->setExternalDisplay(FF)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    iget-boolean v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/ConnectionMode;->setSinkDevice(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WFDUibcManager"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addKeyEvent(III)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "keyCode1"    # I
    .param p3, "keyCode2"    # I

    .line 262
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    return v0

    .line 266
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 267
    const/4 p1, 0x3

    goto :goto_0

    .line 268
    :cond_1
    if-ne p1, v0, :cond_2

    .line 269
    const/4 p1, 0x4

    .line 272
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->addKeyEvent(III)V

    .line 273
    return v0
.end method

.method public addTouchEvent(II[I[I[I)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "pointers"    # I
    .param p3, "id"    # [I
    .param p4, "X"    # [I
    .param p5, "Y"    # [I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    if-nez v0, :cond_0

    .line 237
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 245
    const/4 p1, 0x2

    goto :goto_2

    .line 246
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 247
    const/16 p1, 0x63

    goto :goto_2

    .line 243
    :cond_4
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    .line 241
    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 250
    :cond_6
    :goto_2
    new-array v0, p2, [Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 251
    .local v0, "touchEvent":[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, p2, :cond_7

    .line 252
    new-instance v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v3}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    aput-object v3, v0, v2

    .line 253
    aget-object v3, v0, v2

    aget v4, p3, v2

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 254
    aget-object v3, v0, v2

    aget v4, p4, v2

    int-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 255
    aget-object v3, v0, v2

    aget v4, p5, v2

    int-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 257
    .end local v2    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-virtual {v2, p1, p2, v0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->addTouchEvent(II[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;)V

    .line 258
    return v1
.end method

.method public setPortraitMode(Z)V
    .locals 0
    .param p1, "isPortraitMode"    # Z

    .line 225
    invoke-static {p1}, Lcom/samsung/android/wfd/ConnectionMode;->setPortraitMode(Z)V

    .line 226
    return-void
.end method

.method public setSinkDevice(Z)V
    .locals 2
    .param p1, "isSamsungMobile"    # Z

    .line 229
    iput-boolean p1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    .line 230
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    iget-boolean v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsSamsungMobile:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/wfd/ConnectionMode;->setSinkDevice(Z)V

    .line 233
    :cond_0
    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 3
    .param p1, "externalDisplayWidth"    # F
    .param p2, "externalDisplayHeight"    # F

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayConnected, ExternalDisplayWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ExternalDisplayHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDUibcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput p1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    .line 217
    iput p2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    .line 219
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    iget v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayWidth:F

    iget v2, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mExternalDisplayHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wfd/ConnectionMode;->setExternalDisplay(FF)V

    .line 222
    :cond_0
    return-void
.end method

.method public start(Z)Z
    .locals 2
    .param p1, "isAppCast"    # Z

    .line 133
    invoke-virtual {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager;->stop(Z)Z

    .line 134
    new-instance v0, Lcom/samsung/android/wfd/WFDMode;

    invoke-direct {v0, p1}, Lcom/samsung/android/wfd/WFDMode;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    .line 136
    new-instance v0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;-><init>(Lcom/samsung/android/wfd/WFDUibcManager;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    .line 139
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 141
    if-nez p1, :cond_0

    .line 142
    invoke-static {}, Lcom/samsung/android/wfd/WFDUibcManager;->loadLibrary()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->nativeStartUIBC()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    if-eqz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->updateDisplayValue()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerDisplayChangedListener()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_3

    .line 154
    iget-boolean v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mIsFlipModel:Z

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerFoldStateListener()V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->registerIntentFilter()V

    .line 161
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uibc Manager started! isAppCast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDUibcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public start(ZI)Z
    .locals 2
    .param p1, "isAppCast"    # Z
    .param p2, "mode"    # I

    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/wfd/WFDUibcManager;->start(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 125
    const-string v0, "WFDUibcManager"

    const-string v1, "start by MODE_WIRELESS_DEX"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->setDexMode()V

    .line 129
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public stop(Z)Z
    .locals 5
    .param p1, "isAppCast"    # Z

    .line 166
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;->isRunning:Z

    .line 172
    if-nez p1, :cond_2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->closeConnection()V

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->nativeStopUIBC()V

    .line 179
    :cond_2
    const-string v0, "Going to stop Uibc manager"

    const-string v3, "WFDUibcManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error joining event dispatcher thread"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uibc manager stopped! isAppCast : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcher:Lcom/samsung/android/wfd/WFDUibcManager$EventDispatcher;

    .line 188
    iput-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    .line 190
    if-eqz p1, :cond_3

    .line 191
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wfd/ConnectionMode;->sendHiddenDisplayIntent(Z)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->unregisterDisplayChangedListener()V

    goto :goto_1

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->unregisterFoldStateListener()V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->isDexMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDUibcManager;->mConnectionMode:Lcom/samsung/android/wfd/ConnectionMode;

    invoke-virtual {v0}, Lcom/samsung/android/wfd/ConnectionMode;->unregisterDisplayChangedListener()V

    .line 202
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/wfd/WFDUibcManager;->setPortraitMode(Z)V

    .line 204
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDUibcManager;->clearInstance()V

    .line 206
    return v1
.end method
