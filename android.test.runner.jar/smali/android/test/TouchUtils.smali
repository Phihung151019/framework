.class public Landroid/test/TouchUtils;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/TouchUtils$ViewStateSnapshot;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 22
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .line 340
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 341
    .local v1, "xy":[I
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 343
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 344
    .local v3, "viewWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 346
    .local v4, "viewHeight":I
    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-float v0, v0

    int-to-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v12, v0, v5

    .line 347
    .local v12, "x":F
    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-float v0, v0

    int-to-float v5, v4

    div-float/2addr v5, v6

    add-float v13, v0, v5

    .line 349
    .local v13, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    .line 351
    .local v5, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 352
    .local v7, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 354
    .local v9, "eventTime":J
    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 356
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v5, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 357
    invoke-virtual {v5}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 361
    .end local v9    # "eventTime":J
    .local v16, "eventTime":J
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    .line 362
    .local v9, "touchSlop":I
    int-to-float v10, v9

    div-float/2addr v10, v6

    add-float v19, v12, v10

    int-to-float v10, v9

    div-float/2addr v10, v6

    add-float v20, v13, v10

    const/16 v21, 0x0

    const/16 v18, 0x2

    move-wide v14, v7

    .end local v7    # "downTime":J
    .local v14, "downTime":J
    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 364
    .end local v14    # "downTime":J
    .restart local v7    # "downTime":J
    invoke-virtual {v5, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 365
    invoke-virtual {v5}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 368
    .end local v16    # "eventTime":J
    .local v10, "eventTime":J
    move v6, v9

    move-wide v9, v10

    .end local v10    # "eventTime":J
    .local v6, "touchSlop":I
    .local v9, "eventTime":J
    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 369
    .end local v0    # "event":Landroid/view/MotionEvent;
    .local v11, "event":Landroid/view/MotionEvent;
    invoke-virtual {v5, v11}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 370
    invoke-virtual {v5}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 373
    const-wide/16 v14, 0x3e8

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 377
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public static drag(Landroid/test/ActivityInstrumentationTestCase;FFFFI)V
    .locals 0
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    invoke-static/range {p0 .. p5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 763
    return-void
.end method

.method public static drag(Landroid/test/InstrumentationTestCase;FFFFI)V
    .locals 14
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "stepCount"    # I

    .line 777
    move/from16 v0, p5

    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 779
    .local v1, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 780
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 782
    .local v4, "eventTime":J
    move/from16 v8, p3

    .line 783
    .local v8, "y":F
    move v7, p1

    .line 785
    .local v7, "x":F
    sub-float v6, p4, p3

    int-to-float v9, v0

    div-float v10, v6, v9

    .line 786
    .local v10, "yStep":F
    sub-float v6, p2, p1

    int-to-float v9, v0

    div-float v11, v6, v9

    .line 788
    .local v11, "xStep":F
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 790
    .local v6, "event":Landroid/view/MotionEvent;
    invoke-virtual {v1, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 791
    const/4 v9, 0x0

    move-object v12, v6

    move v13, v9

    .end local v6    # "event":Landroid/view/MotionEvent;
    .local v12, "event":Landroid/view/MotionEvent;
    .local v13, "i":I
    :goto_0
    if-ge v13, v0, :cond_0

    .line 792
    add-float/2addr v8, v10

    .line 793
    add-float/2addr v7, v11

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 795
    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 796
    invoke-virtual {v1, v12}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 791
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 799
    .end local v13    # "i":I
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 800
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 801
    .end local v12    # "event":Landroid/view/MotionEvent;
    .restart local v6    # "event":Landroid/view/MotionEvent;
    invoke-virtual {v1, v6}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 802
    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 803
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/ActivityInstrumentationTestCase;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 10
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 70
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-static {v1}, Landroid/test/TouchUtils;->getSizeExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/util/Size;

    move-result-object v1

    .line 72
    .local v1, "size":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v2, v3

    .line 73
    .local v5, "x":F
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v7, v2, v3

    .line 74
    .local v7, "fromY":F
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v8, v2, v3

    .line 76
    .local v8, "toY":F
    const/4 v9, 0x4

    move v6, v5

    move-object v4, p0

    .end local p0    # "test":Landroid/test/InstrumentationTestCase;
    .local v4, "test":Landroid/test/InstrumentationTestCase;
    invoke-static/range {v4 .. v9}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 77
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/ActivityInstrumentationTestCase;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .locals 10
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 99
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-static {v1}, Landroid/test/TouchUtils;->getSizeExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/util/Size;

    move-result-object v1

    .line 101
    .local v1, "size":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v2, v3

    .line 102
    .local v5, "x":F
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v7, v2, v3

    .line 103
    .local v7, "fromY":F
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v8, v2, v3

    .line 105
    .local v8, "toY":F
    const/4 v9, 0x4

    move v6, v5

    move-object v4, p0

    .end local p0    # "test":Landroid/test/InstrumentationTestCase;
    .local v4, "test":Landroid/test/InstrumentationTestCase;
    invoke-static/range {v4 .. v9}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 106
    return-void
.end method

.method public static dragViewBy(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 562
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .locals 11
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "deltaX"    # I
    .param p4, "deltaY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 584
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 586
    .local v0, "xy":[I
    invoke-static {p1, p2, v0}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 588
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 589
    .local v1, "fromX":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 591
    .local v2, "fromY":I
    int-to-double v3, p3

    int-to-double v5, p4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-int v10, v3

    .line 593
    .local v10, "distance":I
    int-to-float v6, v1

    add-int v3, v1, p3

    int-to-float v7, v3

    int-to-float v8, v2

    add-int v3, v2, p4

    int-to-float v9, v3

    move-object v5, p0

    .end local p0    # "test":Landroid/test/InstrumentationTestCase;
    .local v5, "test":Landroid/test/InstrumentationTestCase;
    invoke-static/range {v5 .. v10}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 595
    return v10
.end method

.method public static dragViewTo(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 617
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .locals 17
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .param p4, "toY"    # I

    .line 634
    move/from16 v0, p3

    move/from16 v1, p4

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 636
    .local v2, "xy":[I
    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v3, v4, v2}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 638
    const/4 v5, 0x0

    aget v5, v2, v5

    .line 639
    .local v5, "fromX":I
    const/4 v6, 0x1

    aget v6, v2, v6

    .line 641
    .local v6, "fromY":I
    sub-int v7, v5, v0

    .line 642
    .local v7, "deltaX":I
    sub-int v8, v6, v1

    .line 644
    .local v8, "deltaY":I
    int-to-double v9, v7

    int-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-int v9, v9

    .line 645
    .local v9, "distance":I
    int-to-float v12, v5

    int-to-float v13, v0

    int-to-float v14, v6

    int-to-float v15, v1

    move-object/from16 v11, p0

    move/from16 v16, v9

    .end local v9    # "distance":I
    .local v16, "distance":I
    invoke-static/range {v11 .. v16}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 647
    return v16
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 2
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 201
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 229
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/View;

    .line 211
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 212
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V
    .locals 15
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "stepCount"    # I

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 242
    .local v0, "wm":Landroid/view/WindowManager;
    nop

    .line 243
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/test/TouchUtils;->getSizeExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/util/Size;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 245
    .local v1, "screenHeight":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 246
    .local v2, "xy":[I
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 248
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 249
    .local v4, "viewWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 251
    .local v5, "viewHeight":I
    const/4 v6, 0x0

    aget v6, v2, v6

    int-to-float v6, v6

    int-to-float v7, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float v10, v6, v7

    .line 252
    .local v10, "x":F
    const/4 v6, 0x1

    aget v6, v2, v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v7, v8

    add-float v12, v6, v7

    .line 253
    .local v12, "fromY":F
    add-int/lit8 v6, v1, -0x1

    int-to-float v13, v6

    .line 255
    .local v13, "toY":F
    move v11, v10

    move-object v9, p0

    move/from16 v14, p3

    invoke-static/range {v9 .. v14}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 256
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 452
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .locals 0
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 467
    invoke-static {p0, p1, p2}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 468
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 1
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .line 477
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 478
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V
    .locals 12
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "stepCount"    # I

    .line 488
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 489
    .local v0, "xy":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 492
    .local v1, "viewWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 494
    .local v2, "viewHeight":I
    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    int-to-float v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float v7, v3, v4

    .line 495
    .local v7, "x":F
    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float v9, v3, v4

    .line 496
    .local v9, "fromY":F
    const/4 v10, 0x0

    .line 498
    .local v10, "toY":F
    move v8, v7

    move-object v6, p0

    move v11, p2

    .end local p0    # "test":Landroid/test/InstrumentationTestCase;
    .end local p2    # "stepCount":I
    .local v6, "test":Landroid/test/InstrumentationTestCase;
    .local v11, "stepCount":I
    invoke-static/range {v6 .. v11}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 499
    return-void
.end method

.method public static dragViewToX(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .locals 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toX"    # I

    .line 683
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 685
    .local v0, "xy":[I
    invoke-static {p1, p2, v0}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 687
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 688
    .local v1, "fromX":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 690
    .local v2, "fromY":I
    sub-int v8, v1, p3

    .line 692
    .local v8, "deltaX":I
    int-to-float v4, v1

    int-to-float v5, p3

    int-to-float v6, v2

    int-to-float v7, v2

    move-object v3, p0

    .end local p0    # "test":Landroid/test/InstrumentationTestCase;
    .local v3, "test":Landroid/test/InstrumentationTestCase;
    invoke-static/range {v3 .. v8}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 694
    return v8
.end method

.method public static dragViewToY(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .locals 9
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "toY"    # I

    .line 730
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 732
    .local v0, "xy":[I
    invoke-static {p1, p2, v0}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 734
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 735
    .local v1, "fromX":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 737
    .local v2, "fromY":I
    sub-int v8, v2, p3

    .line 739
    .local v8, "deltaY":I
    int-to-float v4, v1

    int-to-float v5, v1

    int-to-float v6, v2

    int-to-float v7, p3

    move-object v3, p0

    .end local p0    # "test":Landroid/test/InstrumentationTestCase;
    .local v3, "test":Landroid/test/InstrumentationTestCase;
    invoke-static/range {v3 .. v8}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 741
    return v8
.end method

.method private static getSizeExcludingNavigationBarAndCutout(Landroid/view/WindowMetrics;)Landroid/util/Size;
    .locals 8
    .param p0, "windowMetrics"    # Landroid/view/WindowMetrics;

    .line 109
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 110
    .local v0, "windowInsets":Landroid/view/WindowInsets;
    nop

    .line 111
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 112
    .local v1, "insetsWithCutout":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->left:I

    iget v3, v1, Landroid/graphics/Insets;->right:I

    add-int/2addr v2, v3

    .line 113
    .local v2, "insetsWidth":I
    iget v3, v1, Landroid/graphics/Insets;->top:I

    iget v4, v1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v3, v4

    .line 115
    .local v3, "insetsHeight":I
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 116
    .local v4, "bounds":Landroid/graphics/Rect;
    new-instance v5, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    return-object v5
.end method

.method private static getStartLocation(Landroid/view/View;I[I)V
    .locals 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "gravity"    # I
    .param p2, "xy"    # [I

    .line 511
    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 513
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 514
    .local v0, "viewWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 516
    .local v1, "viewHeight":I
    and-int/lit8 v2, p1, 0x70

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 523
    :sswitch_0
    aget v2, p2, v3

    add-int/lit8 v4, v1, -0x1

    add-int/2addr v2, v4

    aput v2, p2, v3

    .line 524
    goto :goto_0

    .line 518
    :sswitch_1
    goto :goto_0

    .line 520
    :sswitch_2
    aget v2, p2, v3

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v2, v4

    aput v2, p2, v3

    .line 521
    nop

    .line 529
    :goto_0
    and-int/lit8 v2, p1, 0x7

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 536
    :pswitch_1
    aget v2, p2, v3

    add-int/lit8 v4, v0, -0x1

    add-int/2addr v2, v4

    aput v2, p2, v3

    .line 537
    goto :goto_1

    .line 531
    :pswitch_2
    goto :goto_1

    .line 533
    :pswitch_3
    aget v2, p2, v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v2, v4

    aput v2, p2, v3

    .line 534
    nop

    .line 541
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static longClickView(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .locals 0
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V

    .line 392
    return-void
.end method

.method public static longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 24
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .line 401
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 402
    .local v1, "xy":[I
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 404
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 405
    .local v3, "viewWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 407
    .local v4, "viewHeight":I
    const/4 v0, 0x0

    aget v0, v1, v0

    int-to-float v0, v0

    int-to-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v12, v0, v5

    .line 408
    .local v12, "x":F
    const/4 v0, 0x1

    aget v0, v1, v0

    int-to-float v0, v0

    int-to-float v5, v4

    div-float/2addr v5, v6

    add-float v13, v0, v5

    .line 410
    .local v13, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    .line 412
    .local v5, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 413
    .local v7, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 415
    .local v9, "eventTime":J
    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 417
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v5, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 418
    invoke-virtual {v5}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 421
    .end local v9    # "eventTime":J
    .local v16, "eventTime":J
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    .line 422
    .local v6, "touchSlop":I
    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    add-float v19, v12, v9

    div-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    add-float v20, v13, v9

    const/16 v21, 0x0

    const/16 v18, 0x2

    move-wide v14, v7

    .end local v7    # "downTime":J
    .local v14, "downTime":J
    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v7

    .line 424
    .end local v0    # "event":Landroid/view/MotionEvent;
    .local v7, "event":Landroid/view/MotionEvent;
    invoke-virtual {v5, v7}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 425
    invoke-virtual {v5}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 428
    :try_start_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v8

    float-to-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 433
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 434
    .end local v16    # "eventTime":J
    .restart local v9    # "eventTime":J
    const/4 v11, 0x1

    move-wide/from16 v22, v14

    move-object v15, v7

    move-wide/from16 v7, v22

    .end local v14    # "downTime":J
    .local v7, "downTime":J
    .local v15, "event":Landroid/view/MotionEvent;
    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 435
    .end local v15    # "event":Landroid/view/MotionEvent;
    .local v0, "event":Landroid/view/MotionEvent;
    invoke-virtual {v5, v0}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 436
    invoke-virtual {v5}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 437
    return-void
.end method

.method public static scrollToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 133
    return-void
.end method

.method public static scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .line 146
    new-instance v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils-IA;)V

    .line 148
    .local v0, "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    :cond_0
    move-object v2, v0

    .line 149
    .local v2, "prev":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 150
    new-instance v3, Landroid/test/TouchUtils$ViewStateSnapshot;

    invoke-direct {v3, p2, v1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils-IA;)V

    move-object v0, v3

    .line 151
    invoke-virtual {v2, v0}, Landroid/test/TouchUtils$ViewStateSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    return-void
.end method

.method public static scrollToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .locals 1
    .param p0, "test"    # Landroid/test/ActivityInstrumentationTestCase;
    .param p1, "v"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 168
    return-void
.end method

.method public static scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 4
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "v"    # Landroid/view/ViewGroup;

    .line 180
    new-instance v0, Landroid/test/TouchUtils$ViewStateSnapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils-IA;)V

    .line 182
    .local v0, "next":Landroid/test/TouchUtils$ViewStateSnapshot;
    :cond_0
    move-object v2, v0

    .line 183
    .local v2, "prev":Landroid/test/TouchUtils$ViewStateSnapshot;
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 184
    new-instance v3, Landroid/test/TouchUtils$ViewStateSnapshot;

    invoke-direct {v3, p2, v1}, Landroid/test/TouchUtils$ViewStateSnapshot;-><init>(Landroid/view/ViewGroup;Landroid/test/TouchUtils-IA;)V

    move-object v0, v3

    .line 185
    invoke-virtual {v2, v0}, Landroid/test/TouchUtils$ViewStateSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    return-void
.end method

.method public static tapView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 22
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 266
    .local v0, "xy":[I
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 268
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 269
    .local v2, "viewWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 271
    .local v3, "viewHeight":I
    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v12, v4, v5

    .line 272
    .local v12, "x":F
    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v5, v6

    add-float v13, v4, v5

    .line 274
    .local v13, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .line 276
    .local v4, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 277
    .local v7, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 279
    .local v9, "eventTime":J
    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 281
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 282
    invoke-virtual {v4}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 285
    .end local v9    # "eventTime":J
    .local v16, "eventTime":J
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    .line 286
    .local v9, "touchSlop":I
    int-to-float v10, v9

    div-float/2addr v10, v6

    add-float v19, v12, v10

    int-to-float v10, v9

    div-float/2addr v10, v6

    add-float v20, v13, v10

    const/16 v21, 0x0

    const/16 v18, 0x2

    move-wide v14, v7

    .end local v7    # "downTime":J
    .local v14, "downTime":J
    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 288
    .end local v14    # "downTime":J
    .restart local v7    # "downTime":J
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 289
    invoke-virtual {v4}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 292
    .end local v16    # "eventTime":J
    .local v10, "eventTime":J
    move v6, v9

    move-wide v9, v10

    .end local v10    # "eventTime":J
    .local v6, "touchSlop":I
    .local v9, "eventTime":J
    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 293
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 294
    invoke-virtual {v4}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 295
    return-void
.end method

.method public static touchAndCancelView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .locals 22
    .param p0, "test"    # Landroid/test/InstrumentationTestCase;
    .param p1, "v"    # Landroid/view/View;

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 306
    .local v0, "xy":[I
    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 308
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 309
    .local v2, "viewWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 311
    .local v3, "viewHeight":I
    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v12, v4, v5

    .line 312
    .local v12, "x":F
    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    int-to-float v5, v3

    div-float/2addr v5, v6

    add-float v13, v4, v5

    .line 314
    .local v13, "y":F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v4

    .line 316
    .local v4, "inst":Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 317
    .local v14, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 319
    .local v9, "eventTime":J
    const/4 v11, 0x0

    move-wide v7, v14

    .end local v14    # "downTime":J
    .local v7, "downTime":J
    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 321
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 322
    invoke-virtual {v4}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 325
    .end local v9    # "eventTime":J
    .local v16, "eventTime":J
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    .line 326
    .local v9, "touchSlop":I
    int-to-float v10, v9

    div-float/2addr v10, v6

    add-float v19, v12, v10

    int-to-float v10, v9

    div-float/2addr v10, v6

    add-float v20, v13, v10

    const/16 v21, 0x0

    const/16 v18, 0x3

    move-wide v14, v7

    .end local v7    # "downTime":J
    .restart local v14    # "downTime":J
    invoke-static/range {v14 .. v21}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 328
    .end local v14    # "downTime":J
    .restart local v7    # "downTime":J
    invoke-virtual {v4, v5}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 329
    invoke-virtual {v4}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 331
    return-void
.end method
