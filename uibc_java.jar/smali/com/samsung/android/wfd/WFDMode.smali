.class public Lcom/samsung/android/wfd/WFDMode;
.super Lcom/samsung/android/wfd/ConnectionMode;
.source "WFDMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/WFDMode$WFDAppCast;,
        Lcom/samsung/android/wfd/WFDMode$WFDDefault;,
        Lcom/samsung/android/wfd/WFDMode$WFDPortrait;,
        Lcom/samsung/android/wfd/WFDMode$WFDPresentation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WFDMode"


# instance fields
.field mWFDAppCast:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

.field mWFDDefault:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

.field mWFDPortrait:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

.field mWFDPresentation:Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# direct methods
.method constructor <init>(Z)V
    .locals 2
    .param p1, "isAppCast"    # Z

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mToolType:I

    .line 29
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 30
    new-instance v1, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/wfd/WFDMode$WFDAppCast;-><init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode-IA;)V

    iput-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDAppCast:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDAppCast:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDMode;->setHiddenDisplayID()V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Lcom/samsung/android/wfd/WFDMode$WFDDefault;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/wfd/WFDMode$WFDDefault;-><init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode-IA;)V

    iput-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDDefault:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 35
    new-instance v1, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/wfd/WFDMode$WFDPortrait;-><init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode-IA;)V

    iput-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDPortrait:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 36
    new-instance v1, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;-><init>(Lcom/samsung/android/wfd/WFDMode;Lcom/samsung/android/wfd/WFDMode-IA;)V

    iput-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDPresentation:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDDefault:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 40
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFDMode_update : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v1}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private getHiddenDisplay()Landroid/view/Display;
    .locals 5

    .line 155
    const-string v0, "getHiddenDisplay"

    const-string v1, "WFDMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v0, Lcom/samsung/android/wfd/WFDMode;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 157
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string v2, "com.samsung.android.hardware.display.category.HIDDEN_SPACE_DISPLAY"

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 158
    .local v2, "displays":[Landroid/view/Display;
    const/4 v3, 0x0

    .line 160
    .local v3, "display":Landroid/view/Display;
    array-length v4, v2

    if-lez v4, :cond_0

    .line 161
    const/4 v1, 0x0

    aget-object v3, v2, v1

    goto :goto_0

    .line 163
    :cond_0
    const-string v4, "Can\'t update hidden display"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-object v3
.end method

.method private getPresentationDisplay()Landroid/view/Display;
    .locals 6

    .line 169
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPresentationObjectCnt:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPresentDisplayID:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 170
    sget-object v0, Lcom/samsung/android/wfd/WFDMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 171
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 173
    .local v1, "presentationDisplays":[Landroid/view/Display;
    sget-boolean v2, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PresentationDisplays amount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WFDMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 178
    aget-object v3, v1, v2

    .line 179
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget v5, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    if-ne v4, v5, :cond_1

    .line 180
    iget v4, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->semGetPresentationOwner(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/wfd/WFDMode;->mPresentDisplayID:I

    iget v5, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    if-ne v4, v5, :cond_2

    .line 182
    return-object v3

    .line 177
    .end local v3    # "display":Landroid/view/Display;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "presentationDisplays":[Landroid/view/Display;
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isPortraitMode()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/samsung/android/wfd/WFDMode;->mIsPortraitMode:Z

    return v0
.end method

.method private isPresentationMode()Z
    .locals 1

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidToUpdateDisplay()Z
    .locals 9

    .line 69
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 70
    .local v0, "displayManagerGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    const/4 v1, 0x0

    const-string v2, "WFDMode"

    if-nez v0, :cond_0

    .line 71
    const-string v3, "displayManagerGlobal is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v1

    .line 75
    :cond_0
    iget v3, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    if-gez v3, :cond_3

    .line 76
    const-string v3, "External Display is not set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 79
    .local v6, "id":I
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 80
    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v7

    iget v7, v7, Landroid/view/DisplayInfo;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 81
    iput v6, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find External Display ID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    goto :goto_1

    .line 78
    .end local v6    # "id":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    iget v3, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    if-gez v3, :cond_3

    .line 88
    const-string v3, "Could not found External Display"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v1

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDMode;->isDexMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    return v1

    .line 96
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private updateWFDMode()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDAppCast:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    if-ne v0, v1, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->isPresentationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDPresentation:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDPortrait:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mWFDDefault:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iput-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 111
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFDMode_update : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v1}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WFDMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method


# virtual methods
.method convertActionByMotionEvent()Z
    .locals 7

    .line 265
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    const-string v1, ", index = "

    const-string v2, "Not available index, length = "

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "WFDMode"

    packed-switch v0, :pswitch_data_0

    .line 301
    :pswitch_0
    const-string v0, "Not available action"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return v3

    .line 269
    :pswitch_1
    goto/16 :goto_0

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 289
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v3

    .line 294
    :cond_0
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    goto :goto_0

    .line 274
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 275
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    iget-object v6, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result v6

    if-lt v0, v6, :cond_1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v3

    .line 280
    :cond_1
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    .line 306
    :cond_2
    :goto_0
    sget-boolean v0, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pointer Table, Action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method getDisplayId()I
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v0, v0, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    if-eqz v0, :cond_0

    .line 360
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    return v0

    .line 362
    :cond_0
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mHiddenDisplayID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 363
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mHiddenDisplayID:I

    return v0

    .line 365
    :cond_1
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mDefaultDisplayID:I

    return v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 8

    .line 124
    sget-object v0, Lcom/samsung/android/wfd/WFDMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 125
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 126
    .local v1, "displays":[Landroid/view/Display;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 128
    .local v3, "display":Landroid/view/Display;
    iget-boolean v4, p0, Lcom/samsung/android/wfd/WFDMode;->mIsFolded:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 129
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v6, v1, v2

    .line 130
    .local v6, "d":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 131
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wfd/WFDMode;->mDefaultDisplayID:I

    .line 132
    move-object v3, v6

    .line 133
    goto :goto_1

    .line 129
    .end local v6    # "d":Landroid/view/Display;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wfd/WFDMode;->mDefaultDisplayID:I

    .line 139
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v4, p0, Lcom/samsung/android/wfd/WFDMode;->mHiddenDisplayID:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->getHiddenDisplay()Landroid/view/Display;

    move-result-object v3

    .line 144
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v4, v4, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    if-eqz v4, :cond_3

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v3

    .line 147
    :cond_3
    if-eqz v3, :cond_4

    .line 148
    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 151
    :cond_4
    return-object v2
.end method

.method injectInputKeyEvent()V
    .locals 14

    .line 340
    iget-wide v0, p0, Lcom/samsung/android/wfd/WFDMode;->mKeyDownTime:J

    iget-wide v2, p0, Lcom/samsung/android/wfd/WFDMode;->mKeyDownTime:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/wfd/WFDMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v4, v4, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    iget v6, p0, Lcom/samsung/android/wfd/WFDMode;->mRepeatCount:I

    iget v7, p0, Lcom/samsung/android/wfd/WFDMode;->mMetaKey:I

    iget v10, p0, Lcom/samsung/android/wfd/WFDMode;->mEventFlag:I

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDMode;->getDisplayId()I

    move-result v12

    .line 340
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x101

    const/4 v13, 0x0

    invoke-static/range {v0 .. v13}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 352
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 353
    sget-boolean v1, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InjectKeyEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WFDMode"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    return-void
.end method

.method injectInputScrollEvent()V
    .locals 22

    .line 396
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/samsung/android/wfd/WFDMode;->mScrollTime:J

    const-wide/16 v3, 0xa

    sub-long v5, v1, v3

    iget-wide v1, v0, Lcom/samsung/android/wfd/WFDMode;->mScrollTime:J

    sub-long v7, v1, v3

    iget-object v11, v0, Lcom/samsung/android/wfd/WFDMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v12, v0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 404
    iget-object v1, v0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    instance-of v1, v1, Lcom/samsung/android/wfd/WFDMode$WFDPresentation;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/samsung/android/wfd/WFDMode;->mExternalDisplayID:I

    move v15, v1

    goto :goto_0

    :cond_0
    move v15, v2

    .line 396
    :goto_0
    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2002

    const/high16 v21, 0x8000000

    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 411
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 412
    sget-boolean v2, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InjectScrollEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WFDMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1
    return-void
.end method

.method injectInputTouchEvent()V
    .locals 20

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    if-nez v1, :cond_0

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchDownTime:J

    .line 317
    :cond_0
    iget-wide v3, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchDownTime:J

    .line 318
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget v7, v0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    iget-object v1, v0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    .line 320
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/wfd/WFDMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v10, v0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 325
    invoke-virtual {v0}, Lcom/samsung/android/wfd/WFDMode;->getDisplayId()I

    move-result v13

    .line 317
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1002

    const/high16 v19, 0x8000000

    invoke-static/range {v3 .. v19}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 332
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    sget-boolean v2, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InjectTouchEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WFDMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 336
    return-void
.end method

.method setHiddenDisplayID()V
    .locals 5

    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, "displayId":I
    sget-object v1, Lcom/samsung/android/wfd/WFDMode;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 46
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    const-string v2, "com.samsung.android.hardware.display.category.HIDDEN_SPACE_DISPLAY"

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 48
    .local v2, "displays":[Landroid/view/Display;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 49
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 51
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AppCast] setHiddenDisplayId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WFDMode"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 53
    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mHiddenDisplayID:I

    .line 55
    :cond_1
    return-void
.end method

.method setScrollPointerCoords()V
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->scrollBit:I

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollValue:I

    .line 371
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->direction:I

    if-nez v0, :cond_0

    .line 372
    iget v0, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollValue:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollValue:I

    .line 375
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 376
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 378
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v2, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    .line 379
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 380
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollValue:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v1, v4, :cond_2

    .line 382
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget v6, p0, Lcom/samsung/android/wfd/WFDMode;->mScrollValue:I

    int-to-float v6, v6

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 383
    iget-object v1, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 385
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/16 v1, 0x8

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x5

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 392
    return-void
.end method

.method updateDisplayInformation()V
    .locals 2

    .line 59
    const-string v0, "WFDMode"

    const-string v1, "Update Display Information"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->isValidToUpdateDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/wfd/WFDMode;->updateWFDMode()V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/wfd/WFDMode;->updateDisplayValue()V

    .line 66
    return-void
.end method

.method updateTouchPointerTable()Z
    .locals 8

    .line 193
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v0, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointers:I

    const/4 v3, 0x1

    const-string v4, "WFDMode"

    if-ge v0, v2, :cond_a

    .line 197
    sget-boolean v2, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input Pointer ID : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", X: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    const v6, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 202
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 204
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v2, v0}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->updateTouchInput(I)V

    .line 206
    sget-boolean v2, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output Pointer ID : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", x: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/wfd/WFDMode;->mIsSamsungMobile:Z

    if-eqz v2, :cond_7

    .line 212
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    const/4 v6, 0x2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget v7, p0, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayWidth:F

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget v5, p0, Lcom/samsung/android/wfd/WFDMode;->mPrimaryDisplayHeight:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    goto :goto_1

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 228
    const-string v2, "In Range, Change to ACTION_DOWN"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput v1, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    .line 230
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v2, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    goto/16 :goto_2

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 233
    const-string v2, "Skip ACTION_DOWN, Change to ACTION_MOVE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput v6, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    goto :goto_2

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 237
    const-string v2, "Skip ACTION_UP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return v1

    .line 214
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 216
    const-string v2, "Out of Range, Change to ACTION_UP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput v3, p0, Lcom/samsung/android/wfd/WFDMode;->mAction:I

    .line 218
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v2, p0, Lcom/samsung/android/wfd/WFDMode;->mActionIndex:I

    goto/16 :goto_3

    .line 219
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-eq v2, v6, :cond_9

    iget-object v2, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 221
    const-string v2, "Out of Range, Skip Event"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v1

    .line 243
    :cond_7
    :goto_2
    new-instance v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v2}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    .line 244
    .local v2, "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 245
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 246
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 248
    sget-boolean v3, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Put Pointer ID : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", X : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Y : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget v4, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v2    # "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/wfd/WFDMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 255
    sget-boolean v0, Lcom/samsung/android/wfd/WFDMode;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 256
    const-string v0, "Not available PointerTable"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_b
    return v1

    .line 260
    :cond_c
    return v3
.end method
