.class Lcom/android/uiautomator/core/InteractionController;
.super Ljava/lang/Object;
.source "InteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;,
        Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;,
        Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MOTION_EVENT_INJECTION_DELAY_MILLIS:I = 0x5

.field private static final REGULAR_CLICK_LENGTH:J = 0x64L


# instance fields
.field private mDownTime:J

.field private final mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private final mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;


# direct methods
.method static bridge synthetic -$$Nest$minjectEventSync(Lcom/android/uiautomator/core/InteractionController;Landroid/view/InputEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtouchDown(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtouchUp(Lcom/android/uiautomator/core/InteractionController;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Lcom/android/uiautomator/core/InteractionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/uiautomator/core/UiAutomatorBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    nop

    .line 54
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 66
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    .line 67
    return-void
.end method

.method private clickRunnable(II)Ljava/lang/Runnable;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 270
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$2;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    return-object v0
.end method

.method private getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;I)",
            "Landroid/view/accessibility/AccessibilityEvent;"
        }
    .end annotation

    .line 399
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "x":I
    :goto_0
    if-lez v0, :cond_1

    .line 400
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 401
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 402
    return-object v1

    .line 399
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 404
    .end local v0    # "x":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPointerAction(II)I
    .locals 1
    .param p1, "motionEnvent"    # I
    .param p2, "index"    # I

    .line 657
    shl-int/lit8 v0, p2, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method private injectEventSync(Landroid/view/InputEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 653
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->injectInputEvent(Landroid/view/InputEvent;Z)Z

    move-result v0

    return v0
.end method

.method private recycleAccessibilityEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;)V"
        }
    .end annotation

    .line 408
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 409
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .line 410
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 411
    return-void
.end method

.method private runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 4
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeout"    # J

    .line 159
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/uiautomator/core/UiAutomatorBridge;->executeCommandAndWaitForAccessibilityEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "exception from executeCommandAndWaitForAccessibilityEvent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    return-object v0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    const-string v3, "runAndwaitForEvent timedout waiting for events"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-object v0
.end method

.method private touchDown(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 303
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchDown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 307
    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    iget-wide v4, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x1

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 309
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 310
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v1

    return v1
.end method

.method private touchMove(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 326
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchMove ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 330
    .local v4, "eventTime":J
    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x1

    const/4 v6, 0x2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 332
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 333
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v1

    return v1
.end method

.method private touchUp(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 314
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touchUp ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 318
    .local v4, "eventTime":J
    iget-wide v2, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x1

    const/4 v6, 0x1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 320
    .local v0, "event":Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 321
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/uiautomator/core/InteractionController;->mDownTime:J

    .line 322
    invoke-direct {p0, v0}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public clickAndSync(IIJ)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "clickAndSync(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    const/16 v3, 0x804

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public clickAndWaitForNewWindow(IIJ)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "timeout"    # J

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "clickAndWaitForNewWindow(%d, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "logString":Ljava/lang/String;
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->clickRunnable(II)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;

    const/16 v3, 0x820

    invoke-direct {v2, p0, v3}, Lcom/android/uiautomator/core/InteractionController$WaitForAllEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v1, v2, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public clickNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 214
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public freezeRotation()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 604
    return-void
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public longTapNoSync(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 289
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 290
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longTapNoSync ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v0}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const/4 v0, 0x1

    return v0

    .line 299
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public openNotification()Z
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public openQuickSettings()Z
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public varargs performMultiPointerGesture([[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 24
    .param p1, "touches"    # [[Landroid/view/MotionEvent$PointerCoords;

    .line 685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 686
    .local v2, "ret":Z
    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_9

    .line 691
    const/4 v3, 0x0

    .line 692
    .local v3, "maxSteps":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 693
    aget-object v5, v1, v4

    array-length v5, v5

    if-ge v3, v5, :cond_0

    aget-object v5, v1, v4

    array-length v5, v5

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    move v3, v5

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 696
    .end local v4    # "x":I
    :cond_1
    array-length v4, v1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerProperties;

    .line 697
    .local v11, "properties":[Landroid/view/MotionEvent$PointerProperties;
    array-length v4, v1

    new-array v12, v4, [Landroid/view/MotionEvent$PointerCoords;

    .line 698
    .local v12, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v4, 0x0

    .restart local v4    # "x":I
    :goto_2
    array-length v5, v1

    const/16 v21, 0x0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 699
    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 700
    .local v5, "prop":Landroid/view/MotionEvent$PointerProperties;
    iput v4, v5, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 701
    iput v6, v5, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 702
    aput-object v5, v11, v4

    .line 705
    aget-object v6, v1, v4

    aget-object v6, v6, v21

    aput-object v6, v12, v4

    .line 698
    .end local v5    # "prop":Landroid/view/MotionEvent$PointerProperties;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 709
    .end local v4    # "x":I
    :cond_2
    move v4, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 711
    .local v5, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/16 v19, 0x1002

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 713
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    and-int/2addr v2, v8

    .line 715
    const/4 v8, 0x1

    move-object/from16 v22, v7

    move v7, v8

    .local v7, "x":I
    .local v22, "event":Landroid/view/MotionEvent;
    :goto_3
    array-length v8, v1

    if-ge v7, v8, :cond_3

    .line 716
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 717
    const/4 v10, 0x5

    invoke-direct {v0, v10, v7}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    move-result v10

    move v13, v7

    move-wide v7, v8

    move v9, v10

    .end local v7    # "x":I
    .local v13, "x":I
    add-int/lit8 v10, v13, 0x1

    .line 716
    move v14, v13

    .end local v13    # "x":I
    .local v14, "x":I
    const/4 v13, 0x0

    move v15, v14

    .end local v14    # "x":I
    .local v15, "x":I
    const/4 v14, 0x0

    move/from16 v16, v15

    .end local v15    # "x":I
    .local v16, "x":I
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v17, v16

    .end local v16    # "x":I
    .local v17, "x":I
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v18, v17

    .end local v17    # "x":I
    .local v18, "x":I
    const/16 v17, 0x0

    move/from16 v19, v18

    .end local v18    # "x":I
    .local v19, "x":I
    const/16 v18, 0x0

    move/from16 v20, v19

    .end local v19    # "x":I
    .local v20, "x":I
    const/16 v19, 0x1002

    move/from16 v23, v20

    .end local v20    # "x":I
    .local v23, "x":I
    const/16 v20, 0x0

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 719
    .end local v22    # "event":Landroid/view/MotionEvent;
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    and-int/2addr v2, v8

    .line 715
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v22, v7

    move v7, v8

    .end local v23    # "x":I
    .local v8, "x":I
    goto :goto_3

    .end local v8    # "x":I
    .local v7, "x":I
    .restart local v22    # "event":Landroid/view/MotionEvent;
    :cond_3
    move/from16 v23, v7

    .line 723
    .end local v7    # "x":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    add-int/lit8 v8, v3, -0x1

    if-ge v7, v8, :cond_6

    .line 725
    const/4 v8, 0x0

    .restart local v8    # "x":I
    :goto_5
    array-length v9, v1

    if-ge v8, v9, :cond_5

    .line 727
    aget-object v9, v1, v8

    array-length v9, v9

    if-le v9, v7, :cond_4

    .line 728
    aget-object v9, v1, v8

    aget-object v9, v9, v7

    aput-object v9, v12, v8

    goto :goto_6

    .line 730
    :cond_4
    aget-object v9, v1, v8

    aget-object v10, v1, v8

    array-length v10, v10

    sub-int/2addr v10, v4

    aget-object v9, v9, v10

    aput-object v9, v12, v8

    .line 725
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 733
    .end local v8    # "x":I
    :cond_5
    move v9, v7

    .end local v7    # "i":I
    .local v9, "i":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    array-length v10, v1

    const/16 v19, 0x1002

    const/16 v20, 0x0

    move v13, v9

    .end local v9    # "i":I
    .local v13, "i":I
    const/4 v9, 0x2

    move v14, v13

    .end local v13    # "i":I
    .local v14, "i":I
    const/4 v13, 0x0

    move v15, v14

    .end local v14    # "i":I
    .local v15, "i":I
    const/4 v14, 0x0

    move/from16 v16, v15

    .end local v15    # "i":I
    .local v16, "i":I
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v17, v16

    .end local v16    # "i":I
    .local v17, "i":I
    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    const/16 v17, 0x0

    move/from16 v23, v18

    .end local v18    # "i":I
    .local v23, "i":I
    const/16 v18, 0x0

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 737
    .end local v22    # "event":Landroid/view/MotionEvent;
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    and-int/2addr v2, v8

    .line 738
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 723
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v22, v7

    move v7, v8

    .end local v23    # "i":I
    .local v8, "i":I
    goto :goto_4

    .end local v8    # "i":I
    .local v7, "i":I
    .restart local v22    # "event":Landroid/view/MotionEvent;
    :cond_6
    move/from16 v23, v7

    .line 742
    .end local v7    # "i":I
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_7
    array-length v8, v1

    if-ge v7, v8, :cond_7

    .line 743
    aget-object v8, v1, v7

    aget-object v9, v1, v7

    array-length v9, v9

    sub-int/2addr v9, v4

    aget-object v8, v8, v9

    aput-object v8, v12, v7

    .line 742
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 746
    .end local v7    # "x":I
    :cond_7
    const/4 v4, 0x1

    .restart local v4    # "x":I
    :goto_8
    array-length v7, v1

    if-ge v4, v7, :cond_8

    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 748
    const/4 v9, 0x6

    invoke-direct {v0, v9, v4}, Lcom/android/uiautomator/core/InteractionController;->getPointerAction(II)I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    .line 747
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1002

    const/16 v20, 0x0

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v7

    .line 750
    .end local v22    # "event":Landroid/view/MotionEvent;
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    and-int/2addr v2, v8

    .line 746
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v22, v7

    goto :goto_8

    .line 753
    .end local v4    # "x":I
    .end local v7    # "event":Landroid/view/MotionEvent;
    .restart local v22    # "event":Landroid/view/MotionEvent;
    :cond_8
    sget-object v4, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v12, v21

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/16 v19, 0x1002

    const/16 v20, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    .line 757
    .end local v22    # "event":Landroid/view/MotionEvent;
    .local v4, "event":Landroid/view/MotionEvent;
    invoke-direct {v0, v4}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 758
    return v2

    .line 687
    .end local v3    # "maxSteps":I
    .end local v4    # "event":Landroid/view/MotionEvent;
    .end local v5    # "downTime":J
    .end local v11    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v12    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must provide coordinates for at least 2 pointers"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public scrollSwipe(IIIII)Z
    .locals 10
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .line 348
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollSwipe ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v2, Lcom/android/uiautomator/core/InteractionController$3;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "downX":I
    .end local p2    # "downY":I
    .end local p3    # "upX":I
    .end local p4    # "upY":I
    .end local p5    # "steps":I
    .local v4, "downX":I
    .local v5, "downY":I
    .local v6, "upX":I
    .local v7, "upY":I
    .local v8, "steps":I
    invoke-direct/range {v2 .. v8}, Lcom/android/uiautomator/core/InteractionController$3;-><init>(Lcom/android/uiautomator/core/InteractionController;IIIII)V

    .line 360
    .local v2, "command":Ljava/lang/Runnable;
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/accessibility/AccessibilityEvent;>;"
    new-instance p2, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;

    const/16 p3, 0x1000

    invoke-direct {p2, p0, p3, p1}, Lcom/android/uiautomator/core/InteractionController$EventCollectingPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;ILjava/util/List;)V

    .line 363
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/uiautomator/core/Configurator;->getScrollAcknowledgmentTimeout()J

    move-result-wide p4

    .line 361
    invoke-direct {p0, v2, p2, p4, p5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    .line 365
    invoke-direct {p0, p1, p3}, Lcom/android/uiautomator/core/InteractionController;->getLastMatchingEvent(Ljava/util/List;I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 368
    .local p2, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 371
    return p3

    .line 375
    :cond_0
    const/4 p4, 0x0

    .line 376
    .local p4, "foundEnd":Z
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result p5

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p5, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result p5

    if-eq p5, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result p5

    if-eq p5, v1, :cond_3

    .line 377
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result p5

    if-eqz p5, :cond_2

    .line 378
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result p5

    sub-int/2addr p5, v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v1

    if-ne p5, v1, :cond_1

    goto :goto_0

    :cond_1
    move p5, p3

    goto :goto_1

    :cond_2
    :goto_0
    move p5, v0

    :goto_1
    move p4, p5

    .line 379
    sget-object p5, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "scrollSwipe reached scroll end: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 380
    :cond_3
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result p5

    if-eq p5, v1, :cond_9

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result p5

    if-eq p5, v1, :cond_9

    .line 382
    if-ne v4, v6, :cond_6

    .line 384
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result p5

    if-eqz p5, :cond_5

    .line 385
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getScrollY()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollY()I

    move-result v1

    if-ne p5, v1, :cond_4

    goto :goto_2

    :cond_4
    move p5, p3

    goto :goto_3

    :cond_5
    :goto_2
    move p5, v0

    :goto_3
    move p4, p5

    .line 386
    sget-object p5, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vertical scrollSwipe reached scroll end: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 387
    :cond_6
    if-ne v5, v7, :cond_9

    .line 389
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result p5

    if-eqz p5, :cond_8

    .line 390
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getScrollX()I

    move-result p5

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getMaxScrollX()I

    move-result v1

    if-ne p5, v1, :cond_7

    goto :goto_4

    :cond_7
    move p5, p3

    goto :goto_5

    :cond_8
    :goto_4
    move p5, v0

    :goto_5
    move p4, p5

    .line 391
    sget-object p5, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Horizontal scrollSwipe reached scroll end: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_9
    :goto_6
    invoke-direct {p0, p1}, Lcom/android/uiautomator/core/InteractionController;->recycleAccessibilityEvents(Ljava/util/List;)V

    .line 395
    if-nez p4, :cond_a

    move p3, v0

    :cond_a
    return p3
.end method

.method public sendKey(II)Z
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I

    .line 542
    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 543
    sget-object v1, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKey ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v9, p1

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v11, p2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_0
    move/from16 v9, p1

    move/from16 v11, p2

    .line 546
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 547
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/16 v15, 0x101

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v1, v3

    .line 550
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v1}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 551
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/16 v15, 0x101

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v4

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 554
    .local v3, "upEvent":Landroid/view/KeyEvent;
    invoke-direct {v0, v3}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    const/4 v2, 0x1

    return v2

    .line 558
    .end local v3    # "upEvent":Landroid/view/KeyEvent;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public sendKeyAndWaitForEvent(IIIJ)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "metaState"    # I
    .param p3, "eventType"    # I
    .param p4, "timeout"    # J

    .line 186
    new-instance v0, Lcom/android/uiautomator/core/InteractionController$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/uiautomator/core/InteractionController$1;-><init>(Lcom/android/uiautomator/core/InteractionController;II)V

    .line 202
    .local v0, "command":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;

    invoke-direct {v1, p0, p3}, Lcom/android/uiautomator/core/InteractionController$WaitForAnyEventPredicate;-><init>(Lcom/android/uiautomator/core/InteractionController;I)V

    invoke-direct {p0, v0, v1, p4, p5}, Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .line 516
    sget-boolean v0, Lcom/android/uiautomator/core/InteractionController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/android/uiautomator/core/InteractionController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 522
    .local v0, "events":[Landroid/view/KeyEvent;
    if-eqz v0, :cond_2

    .line 523
    invoke-static {}, Lcom/android/uiautomator/core/Configurator;->getInstance()Lcom/android/uiautomator/core/Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/uiautomator/core/Configurator;->getKeyInjectionDelay()J

    move-result-wide v1

    .line 524
    .local v1, "keyDelay":J
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v0, v5

    .line 530
    .local v6, "event2":Landroid/view/KeyEvent;
    nop

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 530
    invoke-static {v6, v7, v8, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v7

    .line 532
    .local v7, "event":Landroid/view/KeyEvent;
    invoke-direct {p0, v7}, Lcom/android/uiautomator/core/InteractionController;->injectEventSync(Landroid/view/InputEvent;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 533
    return v4

    .line 535
    :cond_1
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 524
    .end local v6    # "event2":Landroid/view/KeyEvent;
    .end local v7    # "event":Landroid/view/KeyEvent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 538
    .end local v1    # "keyDelay":J
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public setRotationLeft()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 583
    return-void
.end method

.method public setRotationNatural()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 595
    return-void
.end method

.method public setRotationRight()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 571
    return-void
.end method

.method public sleepDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 637
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 638
    const/4 v0, 0x1

    return v0

    .line 640
    :cond_0
    return v1
.end method

.method public swipe(IIIII)Z
    .locals 7
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I

    .line 423
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "downX":I
    .end local p2    # "downY":I
    .end local p3    # "upX":I
    .end local p4    # "upY":I
    .end local p5    # "steps":I
    .local v1, "downX":I
    .local v2, "downY":I
    .local v3, "upX":I
    .local v4, "upY":I
    .local v5, "steps":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/uiautomator/core/InteractionController;->swipe(IIIIIZ)Z

    move-result p1

    return p1
.end method

.method public swipe(IIIIIZ)Z
    .locals 10
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "upX"    # I
    .param p4, "upY"    # I
    .param p5, "steps"    # I
    .param p6, "drag"    # Z

    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "ret":Z
    move v1, p5

    .line 439
    .local v1, "swipeSteps":I
    const-wide/16 v2, 0x0

    .line 440
    .local v2, "xStep":D
    const-wide/16 v4, 0x0

    .line 443
    .local v4, "yStep":D
    if-nez v1, :cond_0

    .line 444
    const/4 v1, 0x1

    .line 446
    :cond_0
    sub-int v6, p3, p1

    int-to-double v6, v6

    int-to-double v8, v1

    div-double/2addr v6, v8

    .line 447
    .end local v2    # "xStep":D
    .local v6, "xStep":D
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v8, v1

    div-double/2addr v2, v8

    .line 450
    .end local v4    # "yStep":D
    .local v2, "yStep":D
    invoke-direct/range {p0 .. p2}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    .line 451
    if-eqz p6, :cond_1

    .line 452
    iget-object v4, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    invoke-virtual {v4}, Lcom/android/uiautomator/core/UiAutomatorBridge;->getSystemLongPressTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 453
    :cond_1
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 454
    int-to-double v8, v4

    mul-double/2addr v8, v6

    double-to-int v5, v8

    add-int/2addr v5, p1

    int-to-double v8, v4

    mul-double/2addr v8, v2

    double-to-int v8, v8

    add-int/2addr v8, p2

    invoke-direct {p0, v5, v8}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v5

    and-int/2addr v0, v5

    .line 455
    if-nez v0, :cond_2

    .line 456
    goto :goto_1

    .line 461
    :cond_2
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 463
    .end local v4    # "i":I
    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 464
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 465
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v4

    and-int/2addr v0, v4

    .line 466
    return v0
.end method

.method public swipe([Landroid/graphics/Point;I)Z
    .locals 12
    .param p1, "segments"    # [Landroid/graphics/Point;
    .param p2, "segmentSteps"    # I

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "ret":Z
    move v1, p2

    .line 478
    .local v1, "swipeSteps":I
    const-wide/16 v2, 0x0

    .line 479
    .local v2, "xStep":D
    const-wide/16 v4, 0x0

    .line 482
    .local v4, "yStep":D
    if-nez p2, :cond_0

    .line 483
    const/4 p2, 0x1

    .line 486
    :cond_0
    array-length v6, p1

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 487
    return v7

    .line 490
    :cond_1
    aget-object v6, p1, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->touchDown(II)Z

    move-result v0

    .line 491
    const/4 v6, 0x0

    .local v6, "seg":I
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_5

    .line 492
    add-int/lit8 v7, v6, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_4

    .line 494
    add-int/lit8 v7, v6, 0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    aget-object v8, p1, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    int-to-double v7, v7

    int-to-double v9, p2

    div-double/2addr v7, v9

    .line 495
    .end local v2    # "xStep":D
    .local v7, "xStep":D
    add-int/lit8 v2, v6, 0x1

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    aget-object v3, p1, v6

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    int-to-double v9, p2

    div-double/2addr v2, v9

    .line 497
    .end local v4    # "yStep":D
    .local v2, "yStep":D
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 498
    aget-object v5, p1, v6

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-double v9, v4

    mul-double/2addr v9, v7

    double-to-int v9, v9

    add-int/2addr v5, v9

    aget-object v9, p1, v6

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-double v10, v4

    mul-double/2addr v10, v2

    double-to-int v10, v10

    add-int/2addr v9, v10

    invoke-direct {p0, v5, v9}, Lcom/android/uiautomator/core/InteractionController;->touchMove(II)Z

    move-result v5

    and-int/2addr v0, v5

    .line 500
    if-nez v0, :cond_2

    .line 501
    move-wide v4, v2

    move-wide v2, v7

    goto :goto_2

    .line 506
    :cond_2
    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-wide v4, v2

    move-wide v2, v7

    .line 491
    .end local v7    # "xStep":D
    .local v2, "xStep":D
    .local v4, "yStep":D
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 510
    .end local v6    # "seg":I
    :cond_5
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p1, v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v6, v7}, Lcom/android/uiautomator/core/InteractionController;->touchUp(II)Z

    move-result v6

    and-int/2addr v0, v6

    .line 511
    return v0
.end method

.method public toggleRecentApps()Z
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->performGlobalAction(I)Z

    move-result v0

    return v0
.end method

.method public unfreezeRotation()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/android/uiautomator/core/InteractionController;->mUiAutomatorBridge:Lcom/android/uiautomator/core/UiAutomatorBridge;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/uiautomator/core/UiAutomatorBridge;->setRotation(I)Z

    .line 613
    return-void
.end method

.method public wakeDevice()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    invoke-virtual {p0}, Lcom/android/uiautomator/core/InteractionController;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, v1}, Lcom/android/uiautomator/core/InteractionController;->sendKey(II)Z

    .line 624
    const/4 v0, 0x1

    return v0

    .line 626
    :cond_0
    return v1
.end method
