.class public Lcom/samsung/android/game/input/InputRedirection;
.super Landroid/view/InputFilter;
.source "InputRedirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/input/InputRedirection$MapInfo;,
        Lcom/samsung/android/game/input/InputRedirection$Point;,
        Lcom/samsung/android/game/input/InputRedirection$DisplayHelper;,
        Lcom/samsung/android/game/input/InputRedirection$VPointer;
    }
.end annotation


# static fields
.field private static CLICK_TYPE:I = 0x0

.field private static DEFAULT_DISPLAY:I = 0x0

.field private static NOT_USED:I = 0x0

.field private static ROLL_AREA_TYPE:I = 0x0

.field private static ROLL_TYPE:I = 0x0

.field private static ROTATION:I = 0x0

.field private static SCREEN_WIDTH:I = 0x0

.field private static SUB_DISPLAY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InputRedirection"

.field private static USED:I

.field private static autoClickPickUp:Z

.field private static autoPickX:I

.field private static autoPickY:I

.field private static clickIndex:I

.field private static pointerCount:I


# instance fields
.field mAreaMoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/game/input/InputRedirection$MapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mInstalled:Z

.field mMoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/game/input/InputRedirection$MapInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNum:I

.field mPointerCopyTag:[I

.field mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

.field mProperties:[Landroid/view/MotionEvent$PointerProperties;

.field mSubScreenTouchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/game/input/InputRedirection$MapInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTouchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/game/input/InputRedirection$MapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/game/input/InputRedirection;->DEFAULT_DISPLAY:I

    .line 29
    const/4 v1, 0x1

    sput v1, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    .line 30
    sput v1, Lcom/samsung/android/game/input/InputRedirection;->CLICK_TYPE:I

    .line 31
    const/4 v2, 0x2

    sput v2, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    .line 33
    const/4 v2, 0x3

    sput v2, Lcom/samsung/android/game/input/InputRedirection;->ROLL_AREA_TYPE:I

    .line 34
    sput v1, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    .line 35
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    .line 37
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->SCREEN_WIDTH:I

    .line 39
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->ROTATION:I

    .line 41
    const/4 v1, -0x1

    sput v1, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    .line 43
    sput-boolean v0, Lcom/samsung/android/game/input/InputRedirection;->autoClickPickUp:Z

    .line 45
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->autoPickX:I

    .line 47
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->autoPickY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 282
    invoke-direct {p0, p2}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    .line 283
    iput-object p1, p0, Lcom/samsung/android/game/input/InputRedirection;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/game/input/InputRedirection;->init()V

    .line 285
    return-void
.end method


# virtual methods
.method checkPointer(Landroid/view/MotionEvent;)Lcom/samsung/android/game/input/InputRedirection$Point;
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 552
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 553
    .local v1, "x":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    .line 554
    .local v2, "y":I
    const/4 v3, 0x0

    .line 555
    .local v3, "ret":Lcom/samsung/android/game/input/InputRedirection$Point;
    new-instance v4, Lcom/samsung/android/game/input/InputRedirection$Point;

    invoke-direct {v4, p0}, Lcom/samsung/android/game/input/InputRedirection$Point;-><init>(Lcom/samsung/android/game/input/InputRedirection;)V

    .line 557
    .end local v3    # "ret":Lcom/samsung/android/game/input/InputRedirection$Point;
    .local v4, "ret":Lcom/samsung/android/game/input/InputRedirection$Point;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    .line 558
    .local v3, "display":I
    sget v5, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    const/4 v6, 0x0

    const-string v7, "InputRedirection"

    if-ne v3, v5, :cond_2

    .line 559
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 560
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    .line 561
    .local v8, "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->isInMapArea(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 562
    const-string v6, "checkPoint in area of display 1"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->type:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 564
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->tx:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    .line 565
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->ty:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    .line 566
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->needCopy:Z

    .line 567
    return-object v4

    .line 559
    .end local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 570
    .end local v5    # "i":I
    :cond_1
    return-object v6

    .line 573
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mMoveList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-string v9, "checkPoint in move area"

    if-ge v5, v8, :cond_4

    .line 574
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mMoveList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    .line 576
    .restart local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->isInMapArea(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 577
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sget v6, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 579
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->tx:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    .line 580
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->ty:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    .line 581
    iget-boolean v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->needCopy:Z

    iput-boolean v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->needCopy:Z

    .line 582
    return-object v4

    .line 573
    .end local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 586
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mTouchList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 587
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mTouchList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    .line 589
    .restart local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->isInMapArea(II)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 590
    const-string v6, "checkPoint in click area"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget v6, Lcom/samsung/android/game/input/InputRedirection;->CLICK_TYPE:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 592
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->tx:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    .line 593
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->ty:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    .line 594
    iget-boolean v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->needCopy:Z

    iput-boolean v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->needCopy:Z

    .line 595
    return-object v4

    .line 586
    .end local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 599
    .end local v5    # "i":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mAreaMoveList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 600
    iget-object v8, p0, Lcom/samsung/android/game/input/InputRedirection;->mAreaMoveList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    .line 602
    .restart local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    invoke-virtual {v8, v1, v2}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->isInMapArea(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 603
    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sget v6, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 605
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->tx:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    .line 606
    iget v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->ty:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    .line 607
    iget-boolean v6, v8, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->needCopy:Z

    iput-boolean v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->needCopy:Z

    .line 608
    return-object v4

    .line 599
    .end local v8    # "mp":Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 612
    .end local v5    # "i":I
    :cond_8
    return-object v6
.end method

.method clearData()V
    .locals 3

    .line 711
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v0, v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v1, v1, v0

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    iput v2, v1, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    .line 711
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 715
    return-void
.end method

.method clearMapData()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mMoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mTouchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mAreaMoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/game/input/InputRedirection;->autoClickPickUp:Z

    .line 74
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->autoPickX:I

    .line 75
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->autoPickY:I

    .line 76
    return-void
.end method

.method findPoint(Landroid/view/MotionEvent;I)I
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "ct":I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 681
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    .line 682
    .local v2, "display":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v3, v4, :cond_3

    .line 683
    iget-object v4, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v5, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    if-ne v4, v5, :cond_0

    .line 684
    goto :goto_1

    .line 686
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 687
    iget-object v4, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    if-ne v2, v4, :cond_1

    .line 688
    return v3

    .line 691
    :cond_1
    iget v4, p0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v0, v4, :cond_2

    .line 692
    goto :goto_2

    .line 682
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    .end local v3    # "i":I
    :cond_3
    :goto_2
    const/4 v3, -0x1

    return v3
.end method

.method getAvailableId()I
    .locals 3

    .line 699
    const/4 v0, 0x0

    .line 701
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v0, v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    if-ne v1, v2, :cond_0

    .line 703
    goto :goto_1

    .line 701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    :cond_1
    :goto_1
    return v0
.end method

.method getCopyIndex(I)I
    .locals 3
    .param p1, "id"    # I

    .line 719
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v0, v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->DEFAULT_DISPLAY:I

    if-ne v1, v2, :cond_0

    .line 723
    return v0

    .line 719
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method getDownCopyEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 730
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 731
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, "InputRedirection"

    if-eqz v2, :cond_1

    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v7, p1

    move v12, v1

    goto :goto_1

    .line 733
    :cond_1
    :goto_0
    const-string v2, "getNewEvent ACTION_DOWN"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-virtual {v0}, Lcom/samsung/android/game/input/InputRedirection;->getAvailableId()I

    move-result v2

    .line 738
    .local v2, "i":I
    sget v5, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-lt v2, v5, :cond_2

    .line 739
    const/4 v3, 0x0

    return-object v3

    .line 743
    :cond_2
    iget-object v5, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v0, v5, v7, v6}, Lcom/samsung/android/game/input/InputRedirection;->setPoint(Lcom/samsung/android/game/input/InputRedirection$Point;Landroid/view/MotionEvent;I)V

    .line 746
    iget-object v5, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    invoke-virtual {v0, v5}, Lcom/samsung/android/game/input/InputRedirection;->getCopyIndex(I)I

    move-result v5

    .line 747
    .local v5, "index":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 748
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v5

    iput v2, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->cpIdx:I

    .line 752
    :cond_3
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    iput v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 754
    move v6, v2

    .line 755
    .local v6, "newIndex":I
    iget v9, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v9, v8, :cond_4

    .line 756
    const/4 v1, 0x0

    move v12, v1

    goto :goto_1

    .line 758
    :cond_4
    shl-int/lit8 v8, v6, 0x8

    or-int/lit8 v1, v8, 0x5

    move v12, v1

    .line 764
    .end local v1    # "action":I
    .end local v2    # "i":I
    .end local v5    # "index":I
    .end local v6    # "newIndex":I
    .local v12, "action":I
    :goto_1
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    .line 765
    const/4 v1, 0x0

    .line 766
    .local v1, "validNum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sget v5, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v3, v5, :cond_6

    .line 767
    iget-object v5, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v5, v6, :cond_5

    .line 769
    iget-object v5, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    aput-object v6, v5, v1

    .line 770
    iget-object v5, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    aput-object v6, v5, v1

    .line 771
    add-int/lit8 v1, v1, 0x1

    .line 772
    iget v5, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v1, v5, :cond_5

    .line 773
    goto :goto_3

    .line 766
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 779
    .end local v1    # "validNum":I
    .end local v3    # "i":I
    :cond_6
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget v13, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    iget-object v14, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 780
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    .line 781
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    .line 782
    invoke-virtual {v7}, Landroid/view/MotionEvent;->getFlags()I

    move-result v23

    .line 779
    const/16 v16, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, -0x1

    const/16 v21, 0x0

    invoke-static/range {v8 .. v23}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 785
    .local v1, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v2, :cond_7

    .line 786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy new event is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_7
    return-object v1
.end method

.method getIndex(Landroid/view/MotionEvent;)I
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "ct":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 658
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 659
    .local v2, "id":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v3

    .line 660
    .local v3, "display":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget v5, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v4, v5, :cond_3

    .line 661
    iget-object v5, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    if-ne v5, v6, :cond_0

    .line 662
    goto :goto_1

    .line 664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 665
    iget-object v5, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    if-ne v2, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    if-ne v3, v5, :cond_1

    .line 666
    add-int/lit8 v5, v0, -0x1

    return v5

    .line 669
    :cond_1
    iget v5, p0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v0, v5, :cond_2

    .line 670
    goto :goto_2

    .line 660
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    .end local v4    # "i":I
    :cond_3
    :goto_2
    const/4 v4, -0x1

    return v4
.end method

.method public getMapInfoFromJsonArray(Lorg/json/JSONArray;)I
    .locals 20
    .param p1, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 148
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 151
    .local v1, "ret":I
    invoke-virtual {v0}, Lcom/samsung/android/game/input/InputRedirection;->clearMapData()V

    .line 152
    invoke-virtual {v0}, Lcom/samsung/android/game/input/InputRedirection;->clearData()V

    .line 153
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    .line 154
    .local v2, "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 155
    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    .local v6, "object":Lorg/json/JSONObject;
    const-string v7, "typeParam"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 158
    .local v7, "typeParam":I
    and-int/lit8 v8, v7, 0x3

    .line 159
    .local v8, "inputType":I
    shr-int/lit8 v9, v7, 0x2

    and-int/2addr v9, v3

    .line 160
    .local v9, "isMaintainSrc":I
    shr-int/lit8 v10, v7, 0x3

    and-int/2addr v10, v3

    .line 161
    .local v10, "displayId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "typeParam="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", inputType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isMaintainSrc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", displayId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "InputRedirection"

    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v11, Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    invoke-direct {v11, v0}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;-><init>(Lcom/samsung/android/game/input/InputRedirection;)V

    aput-object v11, v2, v4

    .line 165
    const-string v11, "pointParam"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, "pointParam":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    invoke-virtual {v11, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 167
    .local v13, "sub":Ljava/lang/String;
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 168
    .local v14, "str":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pointParam="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ", sub="

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v15, v14

    if-ge v3, v15, :cond_2

    .line 171
    aget-object v15, v14, v3

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 172
    .local v15, "x":I
    add-int/lit8 v17, v3, 0x1

    aget-object v17, v14, v17

    move/from16 v18, v1

    .end local v1    # "ret":I
    .local v18, "ret":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 173
    .local v1, "y":I
    move-object/from16 v17, v2

    .end local v2    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    .local v17, "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "j":I
    .local v19, "j":I
    const-string v3, "x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez v19, :cond_1

    .line 177
    aget-object v2, v17, v4

    const/4 v3, 0x1

    if-ne v9, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v16, 0x0

    move/from16 v3, v16

    :goto_2
    invoke-virtual {v2, v8, v15, v1, v3}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->setData(IIIZ)V

    goto :goto_3

    .line 179
    :cond_1
    aget-object v2, v17, v4

    invoke-virtual {v2, v15, v1}, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->addPointer(II)V

    .line 170
    .end local v1    # "y":I
    .end local v15    # "x":I
    :goto_3
    add-int/lit8 v3, v19, 0x2

    move-object/from16 v2, v17

    move/from16 v1, v18

    .end local v19    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .end local v17    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    .end local v18    # "ret":I
    .local v1, "ret":I
    .restart local v2    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    :cond_2
    move/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    .line 183
    .end local v1    # "ret":I
    .end local v2    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    .end local v3    # "j":I
    .restart local v17    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    .restart local v18    # "ret":I
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->DEFAULT_DISPLAY:I

    if-ne v10, v1, :cond_5

    .line 184
    aget-object v1, v17, v4

    iget v1, v1, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->type:I

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->CLICK_TYPE:I

    if-ne v1, v2, :cond_3

    .line 185
    iget-object v1, v0, Lcom/samsung/android/game/input/InputRedirection;->mTouchList:Ljava/util/ArrayList;

    aget-object v2, v17, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 187
    :cond_3
    aget-object v1, v17, v4

    iget v1, v1, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->type:I

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->ROLL_AREA_TYPE:I

    if-ne v1, v2, :cond_4

    .line 188
    iget-object v1, v0, Lcom/samsung/android/game/input/InputRedirection;->mAreaMoveList:Ljava/util/ArrayList;

    aget-object v2, v17, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 191
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/game/input/InputRedirection;->mMoveList:Ljava/util/ArrayList;

    aget-object v2, v17, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 194
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    aget-object v2, v17, v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "typeParam":I
    .end local v8    # "inputType":I
    .end local v9    # "isMaintainSrc":I
    .end local v10    # "displayId":I
    .end local v11    # "pointParam":Ljava/lang/String;
    .end local v13    # "sub":Ljava/lang/String;
    .end local v14    # "str":[Ljava/lang/String;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v17

    move/from16 v1, v18

    const/4 v3, 0x1

    goto/16 :goto_0

    .end local v17    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    .end local v18    # "ret":I
    .restart local v1    # "ret":I
    .restart local v2    # "MapInfoArray":[Lcom/samsung/android/game/input/InputRedirection$MapInfo;
    :cond_6
    move/from16 v18, v1

    .line 198
    .end local v1    # "ret":I
    .end local v4    # "i":I
    .restart local v18    # "ret":I
    return v18
.end method

.method public getMapInfoFromJsonStr(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonStr"    # Ljava/lang/String;

    .line 127
    const-string v0, "InputRedirection"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "requestJson":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 129
    .local v2, "status":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===status ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 134
    .local v3, "arr":Lorg/json/JSONArray;
    invoke-virtual {p0, v3}, Lcom/samsung/android/game/input/InputRedirection;->getMapInfoFromJsonArray(Lorg/json/JSONArray;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    nop

    .end local v1    # "requestJson":Lorg/json/JSONObject;
    .end local v2    # "status":I
    .end local v3    # "arr":Lorg/json/JSONArray;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json error, e ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method getNewClickEventDown(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 371
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 372
    .local v1, "action":I
    const/4 v2, 0x0

    .line 374
    .local v2, "newEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Lcom/samsung/android/game/input/InputRedirection;->getAvailableId()I

    move-result v3

    .line 376
    .local v3, "i":I
    sget v4, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-lt v3, v4, :cond_0

    .line 377
    const/4 v4, 0x0

    return-object v4

    .line 379
    :cond_0
    sput v3, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    .line 380
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    iput v5, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    .line 381
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->autoPickX:I

    int-to-float v6, v6

    iput v6, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 382
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->autoPickY:I

    int-to-float v6, v6

    iput v6, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 383
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    .line 384
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    iput v5, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 385
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v4, v4, v3

    const/4 v5, -0x1

    iput v5, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    .line 386
    iget v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 388
    move v4, v3

    .line 389
    .local v4, "newIndex":I
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v6, v5, :cond_1

    .line 390
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    .line 392
    :cond_1
    shl-int/lit8 v5, v4, 0x8

    or-int/lit8 v1, v5, 0x5

    move v9, v1

    .line 395
    .end local v1    # "action":I
    .local v9, "action":I
    :goto_0
    const/4 v1, 0x0

    .line 397
    .local v1, "validNum":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    sget v6, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v5, v6, :cond_3

    .line 398
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v6, v7, :cond_2

    .line 400
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    aput-object v7, v6, v1

    .line 401
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    aput-object v7, v6, v1

    .line 402
    add-int/lit8 v1, v1, 0x1

    .line 403
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v1, v6, :cond_2

    .line 404
    goto :goto_2

    .line 397
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 409
    .end local v5    # "k":I
    :cond_3
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    iget-object v11, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    .line 409
    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 414
    return-object v2
.end method

.method getNewClickEventUp(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 321
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 322
    .local v1, "action":I
    const/4 v2, 0x0

    .line 323
    .local v2, "newEvent":Landroid/view/MotionEvent;
    sget v3, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    .line 324
    .local v3, "newIndex":I
    iget v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 325
    const/4 v1, 0x1

    move v10, v1

    goto :goto_0

    .line 327
    :cond_0
    shl-int/lit8 v4, v3, 0x8

    or-int/lit8 v1, v4, 0x6

    move v10, v1

    .line 330
    .end local v1    # "action":I
    .local v10, "action":I
    :goto_0
    const/4 v1, 0x0

    .line 331
    .local v1, "validNum":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    sget v6, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v4, v6, :cond_2

    .line 332
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v6, v7, :cond_1

    .line 334
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    aput-object v7, v6, v1

    .line 335
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    aput-object v7, v6, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    .line 337
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v1, v6, :cond_1

    .line 338
    goto :goto_2

    .line 331
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 343
    .end local v4    # "j":I
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v11, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v13, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 344
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    .line 343
    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 348
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    aget-object v4, v4, v6

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    .line 350
    iget-object v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    aget-object v4, v4, v6

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    iput v6, v4, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 351
    iget v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    sub-int/2addr v4, v5

    iput v4, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 354
    const/4 v4, 0x0

    .line 355
    .local v4, "validNumM":I
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_3
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-lez v6, :cond_4

    sget v6, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v5, v6, :cond_4

    .line 356
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v5

    iget v6, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v6, v7, :cond_3

    .line 358
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    aput-object v7, v6, v4

    .line 359
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v5

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    aput-object v7, v6, v4

    .line 360
    add-int/lit8 v4, v4, 0x1

    .line 361
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v4, v6, :cond_3

    .line 362
    goto :goto_4

    .line 355
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 366
    .end local v5    # "p":I
    :cond_4
    :goto_4
    const/4 v5, -0x1

    sput v5, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    .line 367
    return-object v2
.end method

.method getNewEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 33
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 794
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 795
    .local v2, "action":I
    const/4 v3, -0x1

    .line 796
    .local v3, "upIndex":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 797
    .local v4, "index":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 799
    .local v5, "id":I
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x5

    const/4 v9, -0x1

    const/4 v10, 0x2

    const-string v11, "InputRedirection"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_f

    .line 800
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v8, :cond_0

    move-object/from16 v16, v12

    goto/16 :goto_4

    .line 849
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v10, :cond_b

    .line 850
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-nez v6, :cond_1

    .line 851
    return-object v12

    .line 854
    :cond_1
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 855
    .local v6, "ct":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_a

    .line 856
    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/game/input/InputRedirection;->findPoint(Landroid/view/MotionEvent;I)I

    move-result v14

    .line 858
    .local v14, "p":I
    if-ne v14, v9, :cond_2

    .line 859
    move-object/from16 v16, v12

    goto/16 :goto_3

    .line 862
    :cond_2
    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v15, v15, v14

    iget v15, v15, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    move-object/from16 v16, v12

    sget v12, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    if-ne v15, v12, :cond_5

    .line 864
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v14

    iget v12, v12, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    sget v15, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    if-ne v12, v15, :cond_9

    .line 865
    sget v12, Lcom/samsung/android/game/input/InputRedirection;->ROTATION:I

    if-eq v12, v13, :cond_4

    sget v12, Lcom/samsung/android/game/input/InputRedirection;->ROTATION:I

    if-ne v12, v7, :cond_3

    goto :goto_1

    .line 869
    :cond_3
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v14

    iget-object v12, v12, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v14

    iget v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    int-to-float v7, v7

    add-float/2addr v15, v7

    iput v15, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_2

    .line 866
    :cond_4
    :goto_1
    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v14

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    sget v12, Lcom/samsung/android/game/input/InputRedirection;->SCREEN_WIDTH:I

    int-to-float v12, v12

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    sub-float/2addr v12, v15

    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v15, v15, v14

    iget v15, v15, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    int-to-float v15, v15

    add-float/2addr v12, v15

    iput v12, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 871
    :goto_2
    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v14

    iget-object v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v15, v15, v14

    iget v15, v15, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    int-to-float v15, v15

    add-float/2addr v12, v15

    iput v12, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto/16 :goto_3

    .line 877
    :cond_5
    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v7, v7, v14

    iget v7, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    .line 878
    .local v7, "pid":I
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v14

    iget v12, v12, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    if-lez v12, :cond_6

    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPointerCopyTag:[I

    aget v12, v12, v7

    sget v15, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v12, v15, :cond_6

    .line 880
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v14

    iget v12, v12, Lcom/samsung/android/game/input/InputRedirection$Point;->cpIdx:I

    .line 881
    .local v12, "cpIdx":I
    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v15, v15, v12

    iget-object v15, v15, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iput v10, v15, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 882
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v12

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v15

    iput v15, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 887
    .end local v12    # "cpIdx":I
    :cond_6
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v14

    iget v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    sget v12, Lcom/samsung/android/game/input/InputRedirection;->CLICK_TYPE:I

    if-ne v10, v12, :cond_7

    .line 888
    goto :goto_3

    .line 892
    :cond_7
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v14

    iget v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    sget v12, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    if-ne v10, v12, :cond_8

    .line 893
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v14

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v15, v15, v14

    iget v15, v15, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    int-to-float v15, v15

    add-float/2addr v12, v15

    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 894
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v14

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget-object v15, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v15, v15, v14

    iget v15, v15, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    int-to-float v15, v15

    add-float/2addr v12, v15

    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 895
    goto :goto_3

    .line 898
    :cond_8
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v14

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 899
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v14

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iput v12, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 855
    .end local v7    # "pid":I
    .end local v14    # "p":I
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v16

    const/4 v7, 0x3

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_a
    move-object/from16 v16, v12

    .line 902
    .end local v6    # "ct":I
    .end local v8    # "i":I
    goto/16 :goto_8

    :cond_b
    move-object/from16 v16, v12

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v13, :cond_c

    .line 903
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v7, :cond_16

    .line 904
    :cond_c
    const-string v6, "getNewEvent ACTION_UP"

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/game/input/InputRedirection;->findPoint(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 908
    .local v6, "p":I
    if-ne v6, v9, :cond_d

    .line 909
    return-object v16

    .line 911
    :cond_d
    move v3, v6

    .line 913
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/game/input/InputRedirection;->getIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 914
    .local v8, "newIndex":I
    iget v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v10, v13, :cond_e

    .line 915
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 917
    :cond_e
    shl-int/lit8 v10, v8, 0x8

    or-int/lit8 v2, v10, 0x6

    goto/16 :goto_8

    .line 799
    .end local v6    # "p":I
    .end local v8    # "newIndex":I
    :cond_f
    move-object/from16 v16, v12

    .line 802
    :goto_4
    const-string v6, "getNewEvent ACTION_DOWN"

    invoke-static {v11, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v0}, Lcom/samsung/android/game/input/InputRedirection;->getAvailableId()I

    move-result v6

    .line 807
    .local v6, "i":I
    sget v7, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-lt v6, v7, :cond_10

    .line 808
    return-object v16

    .line 812
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/game/input/InputRedirection;->checkPointer(Landroid/view/MotionEvent;)Lcom/samsung/android/game/input/InputRedirection$Point;

    move-result-object v7

    .line 813
    .local v7, "tmp":Lcom/samsung/android/game/input/InputRedirection$Point;
    if-eqz v7, :cond_13

    .line 815
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v10

    .line 816
    .local v10, "display":I
    sget v12, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    if-eq v10, v12, :cond_11

    iget-boolean v12, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->needCopy:Z

    if-eqz v12, :cond_11

    .line 819
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPointerCopyTag:[I

    sget v14, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    aput v14, v12, v5

    .line 823
    :cond_11
    iget v12, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    sget v14, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    if-ne v12, v14, :cond_12

    .line 824
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v6

    iget v14, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    iget v15, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    invoke-virtual {v0, v12, v1, v14, v15}, Lcom/samsung/android/game/input/InputRedirection;->setMovePoint(Lcom/samsung/android/game/input/InputRedirection$Point;Landroid/view/MotionEvent;II)V

    goto :goto_5

    .line 826
    :cond_12
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v6

    sget v14, Lcom/samsung/android/game/input/InputRedirection;->CLICK_TYPE:I

    invoke-virtual {v0, v12, v1, v14}, Lcom/samsung/android/game/input/InputRedirection;->setPoint(Lcom/samsung/android/game/input/InputRedirection$Point;Landroid/view/MotionEvent;I)V

    .line 827
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v6

    iget-object v12, v12, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    iget v14, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    int-to-float v14, v14

    iput v14, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 828
    iget-object v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v12, v12, v6

    iget-object v12, v12, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    iget v14, v7, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    int-to-float v14, v14

    iput v14, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 830
    .end local v10    # "display":I
    :goto_5
    goto :goto_6

    .line 833
    :cond_13
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v10

    sget v12, Lcom/samsung/android/game/input/InputRedirection;->DEFAULT_DISPLAY:I

    if-eq v10, v12, :cond_14

    .line 834
    return-object v16

    .line 837
    :cond_14
    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v6

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v1, v12}, Lcom/samsung/android/game/input/InputRedirection;->setPoint(Lcom/samsung/android/game/input/InputRedirection$Point;Landroid/view/MotionEvent;I)V

    .line 840
    :goto_6
    iget v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    add-int/2addr v10, v13

    iput v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 842
    move v10, v6

    .line 843
    .local v10, "newIndex":I
    iget v12, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v12, v13, :cond_15

    .line 844
    const/4 v2, 0x0

    goto :goto_7

    .line 846
    :cond_15
    shl-int/lit8 v12, v10, 0x8

    or-int/lit8 v2, v12, 0x5

    .line 849
    .end local v6    # "i":I
    .end local v7    # "tmp":Lcom/samsung/android/game/input/InputRedirection$Point;
    .end local v10    # "newIndex":I
    :goto_7
    nop

    .line 924
    :cond_16
    :goto_8
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_18

    .line 926
    const/4 v6, 0x0

    .line 927
    .local v6, "validNum":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    sget v8, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v7, v8, :cond_18

    .line 928
    iget-object v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v10, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v8, v10, :cond_17

    .line 930
    iget-object v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v7

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    aput-object v10, v8, v6

    .line 931
    iget-object v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v10, v10, v7

    iget-object v10, v10, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    aput-object v10, v8, v6

    .line 932
    add-int/lit8 v6, v6, 0x1

    .line 933
    iget v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v6, v8, :cond_17

    .line 934
    goto :goto_a

    .line 927
    :cond_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 941
    .end local v6    # "validNum":I
    .end local v7    # "i":I
    :cond_18
    :goto_a
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_19

    .line 942
    const/4 v2, 0x3

    .line 943
    invoke-virtual {v0}, Lcom/samsung/android/game/input/InputRedirection;->clearData()V

    move/from16 v21, v2

    goto :goto_b

    .line 941
    :cond_19
    move/from16 v21, v2

    .line 946
    .end local v2    # "action":I
    .local v21, "action":I
    :goto_b
    iget v2, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-nez v2, :cond_1a

    .line 947
    return-object v16

    .line 949
    :cond_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    iget v2, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v7, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 950
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v26

    .line 951
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v31

    .line 952
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v32

    .line 949
    const/16 v25, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, -0x1

    const/16 v30, 0x0

    move/from16 v22, v2

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    invoke-static/range {v17 .. v32}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 955
    .local v2, "newEvent":Landroid/view/MotionEvent;
    if-eq v3, v9, :cond_1c

    .line 956
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v3

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    iput v7, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    .line 958
    iget-object v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v6, v6, v3

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    iput v7, v6, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 959
    iget v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    sub-int/2addr v6, v13

    iput v6, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 962
    const/4 v6, 0x0

    .line 963
    .restart local v6    # "validNum":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_c
    iget v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-lez v8, :cond_1c

    sget v8, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v7, v8, :cond_1c

    .line 964
    iget-object v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v8, v8, v7

    iget v8, v8, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    sget v9, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v8, v9, :cond_1b

    .line 966
    iget-object v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget-object v9, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v9, v9, v7

    iget-object v9, v9, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    aput-object v9, v8, v6

    .line 967
    iget-object v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v9, v0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v9, v9, v7

    iget-object v9, v9, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    aput-object v9, v8, v6

    .line 968
    add-int/lit8 v6, v6, 0x1

    .line 969
    iget v8, v0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    if-ne v6, v8, :cond_1b

    .line 970
    goto :goto_d

    .line 963
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 976
    .end local v6    # "validNum":I
    .end local v7    # "i":I
    :cond_1c
    :goto_d
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1d

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new event is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_1d
    return-object v2
.end method

.method init()V
    .locals 4

    .line 288
    const-string v0, "InputRedirection"

    const-string v1, "init called,"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget v0, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mPointerCopyTag:[I

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mNum:I

    .line 292
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    new-array v1, v1, [Lcom/samsung/android/game/input/InputRedirection$Point;

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    .line 293
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    new-array v1, v1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 294
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    new-array v1, v1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/samsung/android/game/input/InputRedirection;->pointerCount:I

    if-ge v1, v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    new-instance v3, Lcom/samsung/android/game/input/InputRedirection$Point;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/input/InputRedirection$Point;-><init>(Lcom/samsung/android/game/input/InputRedirection;)V

    aput-object v3, v2, v1

    .line 299
    iget-object v2, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v2, v2, v1

    iput v1, v2, Lcom/samsung/android/game/input/InputRedirection$Point;->id:I

    .line 300
    iget-object v2, p0, Lcom/samsung/android/game/input/InputRedirection;->mPoints:[Lcom/samsung/android/game/input/InputRedirection$Point;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/samsung/android/game/input/InputRedirection$Point;->properties:Landroid/view/MotionEvent$PointerProperties;

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mMoveList:Ljava/util/ArrayList;

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mTouchList:Ljava/util/ArrayList;

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mAreaMoveList:Ljava/util/ArrayList;

    .line 308
    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/input/InputRedirection$DisplayHelper;->getSecondaryDisplaySize(Landroid/content/Context;)[I

    move-result-object v1

    .line 309
    .local v1, "secondaryDisplaySize":[I
    if-eqz v1, :cond_2

    .line 310
    aget v0, v1, v0

    .line 311
    .local v0, "width":I
    const/4 v2, 0x1

    aget v2, v1, v2

    .line 312
    .local v2, "height":I
    if-le v0, v2, :cond_1

    .line 313
    sput v0, Lcom/samsung/android/game/input/InputRedirection;->SCREEN_WIDTH:I

    goto :goto_1

    .line 315
    :cond_1
    sput v2, Lcom/samsung/android/game/input/InputRedirection;->SCREEN_WIDTH:I

    .line 318
    .end local v0    # "width":I
    .end local v2    # "height":I
    :cond_2
    :goto_1
    return-void
.end method

.method isInMapArea()Z
    .locals 1

    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mInstalled:Z

    return v0
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .line 420
    if-nez p1, :cond_0

    .line 421
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 422
    return-void

    .line 425
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mInstalled:Z

    if-nez v0, :cond_1

    .line 426
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 427
    return-void

    .line 430
    :cond_1
    instance-of v0, p1, Landroid/view/MotionEvent;

    const-string v1, "InputRedirection"

    if-eqz v0, :cond_13

    .line 431
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 433
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_2

    .line 434
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 435
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=====motionEvent ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    .line 440
    .local v2, "display":I
    sget v4, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    if-ne v2, v4, :cond_6

    .line 441
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 442
    const/4 v4, 0x0

    .line 443
    .local v4, "hasRoll":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 444
    iget-object v6, p0, Lcom/samsung/android/game/input/InputRedirection;->mSubScreenTouchList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/game/input/InputRedirection$MapInfo;

    iget v6, v6, Lcom/samsung/android/game/input/InputRedirection$MapInfo;->type:I

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    if-ne v6, v7, :cond_4

    .line 445
    const/4 v4, 0x1

    .line 446
    goto :goto_1

    .line 443
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    .end local v5    # "i":I
    :cond_5
    :goto_1
    if-nez v4, :cond_6

    .line 451
    return-void

    .line 457
    .end local v4    # "hasRoll":Z
    :cond_6
    move-object v4, p1

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/input/InputRedirection;->getNewEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 459
    .local v4, "newEvent":Landroid/view/MotionEvent;
    if-nez v4, :cond_7

    .line 460
    const-string v3, "event getNewEvent is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void

    .line 464
    :cond_7
    invoke-super {p0, v4, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 466
    sget-boolean v5, Lcom/samsung/android/game/input/InputRedirection;->autoClickPickUp:Z

    if-eqz v5, :cond_a

    .line 467
    sget v5, Lcom/samsung/android/game/input/InputRedirection;->clickIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_a

    .line 468
    move-object v5, p1

    check-cast v5, Landroid/view/MotionEvent;

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/input/InputRedirection;->getNewClickEventDown(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 469
    .local v5, "newClickEventDown":Landroid/view/MotionEvent;
    if-eqz v4, :cond_8

    .line 470
    invoke-super {p0, v5, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 472
    :cond_8
    move-object v6, p1

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/input/InputRedirection;->getNewClickEventUp(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 473
    .local v6, "newClickEventUp":Landroid/view/MotionEvent;
    if-eqz v4, :cond_9

    .line 474
    invoke-super {p0, v6, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 476
    :cond_9
    const/4 v7, 0x0

    sput-boolean v7, Lcom/samsung/android/game/input/InputRedirection;->autoClickPickUp:Z

    .line 480
    .end local v5    # "newClickEventDown":Landroid/view/MotionEvent;
    .end local v6    # "newClickEventUp":Landroid/view/MotionEvent;
    :cond_a
    sget v5, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    if-ne v2, v5, :cond_b

    .line 481
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 482
    return-void

    .line 485
    :cond_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_f

    .line 486
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v3, :cond_c

    goto :goto_2

    .line 499
    :cond_c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_d

    .line 500
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x6

    if-ne v3, v5, :cond_12

    .line 501
    :cond_d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 502
    .local v3, "index":I
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 504
    .local v5, "id":I
    iget-object v6, p0, Lcom/samsung/android/game/input/InputRedirection;->mPointerCopyTag:[I

    aget v6, v6, v5

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v6, v7, :cond_12

    .line 505
    move-object v6, p1

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/input/InputRedirection;->getNewEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 507
    .local v6, "cpEvent":Landroid/view/MotionEvent;
    if-nez v6, :cond_e

    .line 508
    const-string v7, "up event cpEvent is null"

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void

    .line 511
    :cond_e
    invoke-super {p0, v6, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 513
    iget-object v1, p0, Lcom/samsung/android/game/input/InputRedirection;->mPointerCopyTag:[I

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->NOT_USED:I

    aput v7, v1, v5

    goto :goto_3

    .line 487
    .end local v3    # "index":I
    .end local v5    # "id":I
    .end local v6    # "cpEvent":Landroid/view/MotionEvent;
    :cond_f
    :goto_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 488
    .restart local v3    # "index":I
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 490
    .restart local v5    # "id":I
    iget-object v6, p0, Lcom/samsung/android/game/input/InputRedirection;->mPointerCopyTag:[I

    aget v6, v6, v5

    sget v7, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    if-ne v6, v7, :cond_11

    .line 491
    move-object v6, p1

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {p0, v6}, Lcom/samsung/android/game/input/InputRedirection;->getDownCopyEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 493
    .restart local v6    # "cpEvent":Landroid/view/MotionEvent;
    if-nez v6, :cond_10

    .line 494
    const-string v7, "event cpEvent is null"

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void

    .line 497
    :cond_10
    invoke-super {p0, v6, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 499
    .end local v3    # "index":I
    .end local v5    # "id":I
    .end local v6    # "cpEvent":Landroid/view/MotionEvent;
    :cond_11
    nop

    .line 516
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "display":I
    .end local v4    # "newEvent":Landroid/view/MotionEvent;
    :cond_12
    :goto_3
    goto :goto_4

    .line 517
    :cond_13
    const-string v0, "event not ----- instanceof MotionEvent"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 521
    :goto_4
    return-void
.end method

.method public onInstalled()V
    .locals 2

    .line 525
    const-string v0, "InputRedirection"

    const-string v1, "TestInputFilter installed."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mInstalled:Z

    .line 527
    iget-object v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/input/InputRedirection$DisplayHelper;->getWindowRotation(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/samsung/android/game/input/InputRedirection;->ROTATION:I

    .line 528
    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    .line 529
    return-void
.end method

.method public onUninstalled()V
    .locals 2

    .line 533
    const-string v0, "InputRedirection"

    const-string v1, "TestInputFilter uninstalled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/input/InputRedirection;->mInstalled:Z

    .line 535
    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    .line 536
    return-void
.end method

.method public setGenShinAutoPickUpFlag(ZII)V
    .locals 0
    .param p1, "isNeedClick"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 142
    sput-boolean p1, Lcom/samsung/android/game/input/InputRedirection;->autoClickPickUp:Z

    .line 143
    sput p2, Lcom/samsung/android/game/input/InputRedirection;->autoPickX:I

    .line 144
    sput p3, Lcom/samsung/android/game/input/InputRedirection;->autoPickY:I

    .line 145
    return-void
.end method

.method setMovePoint(Lcom/samsung/android/game/input/InputRedirection$Point;Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "outPoint"    # Lcom/samsung/android/game/input/InputRedirection$Point;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .line 618
    const-string v0, "InputRedirection"

    const-string v1, "setMovePoint called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 620
    .local v0, "index":I
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    .line 621
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    .line 622
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->SUB_DISPLAY:I

    if-eq v1, v2, :cond_0

    .line 623
    iget-object v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_1

    .line 626
    :cond_0
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->ROTATION:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget v1, Lcom/samsung/android/game/input/InputRedirection;->ROTATION:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 630
    :cond_1
    iget-object v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    goto :goto_1

    .line 627
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    sget v2, Lcom/samsung/android/game/input/InputRedirection;->SCREEN_WIDTH:I

    int-to-float v2, v2

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, p3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 633
    :goto_1
    iget-object v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    int-to-float v3, p4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 634
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->ROLL_TYPE:I

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 636
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    .line 638
    iput p3, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->x:I

    .line 639
    iput p4, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->y:I

    .line 640
    return-void
.end method

.method setPoint(Lcom/samsung/android/game/input/InputRedirection$Point;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "outPoint"    # Lcom/samsung/android/game/input/InputRedirection$Point;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "mapState"    # I

    .line 644
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 645
    .local v0, "index":I
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->oriId:I

    .line 646
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->display:I

    .line 647
    iget-object v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 648
    iget-object v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->coords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 649
    iput p3, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->mapped:I

    .line 651
    sget v1, Lcom/samsung/android/game/input/InputRedirection;->USED:I

    iput v1, p1, Lcom/samsung/android/game/input/InputRedirection$Point;->tag:I

    .line 652
    return-void
.end method
