.class public Lcom/samsung/android/wfd/DeXMode;
.super Lcom/samsung/android/wfd/ConnectionMode;
.source "DeXMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wfd/DeXMode$WirelessDeX;
    }
.end annotation


# static fields
.field private static final DESKTOP_MODE_KEY_UIBC_FINGER_ENABLED:Ljava/lang/String; = "uibc_finger_enabled"

.field private static final DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private static final FLAG_EXTERNAL_DESKTOP_WINDOWING:I = 0x20000

.field private static final TAG:Ljava/lang/String; = "DeXMode"

.field static mWirelessDeX:Lcom/samsung/android/wfd/ConnectionMode$ModeType;


# instance fields
.field private mButtonStateForDeX:I

.field private mDexSettingObserver:Landroid/database/ContentObserver;

.field private mDexUibcFingerEnabled:Z

.field private mDexUibcStartTime:J

.field private mMouseLeftButtonDownPressed:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDexUibcFingerEnabled(Lcom/samsung/android/wfd/DeXMode;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterDexSettingObserver(Lcom/samsung/android/wfd/DeXMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wfd/DeXMode;->registerDexSettingObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDESKTOP_MODE_SETTINGS_CONTENT_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wfd/DeXMode;->DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/wfd/ConnectionMode;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    .line 39
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    .line 40
    iput v2, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 43
    new-instance v2, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/wfd/DeXMode$WirelessDeX;-><init>(Lcom/samsung/android/wfd/DeXMode;Lcom/samsung/android/wfd/DeXMode-IA;)V

    sput-object v2, Lcom/samsung/android/wfd/DeXMode;->mWirelessDeX:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 44
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mWirelessDeX:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    .line 45
    iput v1, p0, Lcom/samsung/android/wfd/DeXMode;->mToolType:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnectionMode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v1}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeXMode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method private isValidToUpdateDisplay()Z
    .locals 8

    .line 106
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 107
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    .line 109
    .local v1, "displays":[Landroid/view/Display;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 110
    .local v5, "display":Landroid/view/Display;
    invoke-virtual {v5}, Landroid/view/Display;->getFlags()I

    move-result v6

    const/high16 v7, 0x20000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 111
    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find External Display ID for Dex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeXMode"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v2, 0x1

    return v2

    .line 109
    .end local v5    # "display":Landroid/view/Display;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return v3
.end method

.method private registerDexSettingObserver()V
    .locals 4

    .line 59
    new-instance v0, Lcom/samsung/android/wfd/DeXMode$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wfd/DeXMode$1;-><init>(Lcom/samsung/android/wfd/DeXMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 82
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/wfd/DeXMode;->DESKTOP_MODE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 83
    const-string v2, "uibc_finger_enabled"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    return-void
.end method

.method private unregisterDexSettingObserver()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexSettingObserver:Landroid/database/ContentObserver;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/samsung/android/wfd/ConnectionMode;->closeConnection()V

    .line 53
    const-string v0, "DeXMode"

    const-string v1, "unregisterDexSettingObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/wfd/DeXMode;->unregisterDexSettingObserver()V

    .line 55
    return-void
.end method

.method convertActionByMotionEvent()Z
    .locals 7

    .line 224
    iget-boolean v0, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    const-string v1, "Not available action"

    const/4 v2, 0x0

    const-string v3, "DeXMode"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 225
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const-string v5, ", index = "

    const-string v6, "Not available index, length = "

    packed-switch v0, :pswitch_data_0

    .line 260
    :pswitch_0
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v2

    .line 228
    :pswitch_1
    goto/16 :goto_0

    .line 247
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 248
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v2

    .line 253
    :cond_0
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto/16 :goto_0

    .line 233
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    .line 234
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v2

    .line 239
    :cond_1
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    shl-int/lit8 v0, v0, 0x8

    or-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto :goto_0

    .line 265
    :cond_2
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_1

    .line 295
    :pswitch_4
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v2

    .line 267
    :pswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    if-eqz v0, :cond_3

    .line 268
    iput v5, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto :goto_0

    .line 270
    :cond_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 272
    goto :goto_0

    .line 286
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 287
    iput v5, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    goto :goto_0

    .line 289
    :cond_4
    iput v4, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 290
    iput-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    .line 292
    goto :goto_0

    .line 276
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 277
    iput v5, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    goto :goto_0

    .line 279
    :cond_5
    iput v4, p0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 280
    iput-boolean v4, p0, Lcom/samsung/android/wfd/DeXMode;->mMouseLeftButtonDownPressed:Z

    .line 282
    nop

    .line 301
    :cond_6
    :goto_0
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pointer Table, Action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_7
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 5

    .line 121
    sget-object v0, Lcom/samsung/android/wfd/DeXMode;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 122
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 124
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 126
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    if-nez v1, :cond_0

    .line 127
    const-string v3, "DeXMode"

    const-string v4, "Display is null, can\'t get display metrics."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    :goto_0
    return-object v2
.end method

.method injectInputKeyEvent()V
    .locals 21

    .line 481
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    const-string v2, "InjectKeyEvent: "

    const-string v3, "DeXMode"

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    if-lez v1, :cond_1

    .line 482
    iget-wide v7, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    iget-wide v9, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    sub-long/2addr v9, v5

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v11, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v12, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    iget v13, v0, Lcom/samsung/android/wfd/DeXMode;->mRepeatCount:I

    iget v14, v0, Lcom/samsung/android/wfd/DeXMode;->mMetaKey:I

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mEventFlag:I

    iget v5, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x101

    move/from16 v17, v1

    move/from16 v19, v5

    invoke-static/range {v7 .. v20}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 494
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 495
    sget-boolean v4, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    goto :goto_0

    .line 501
    :cond_1
    move-wide v7, v5

    iget-wide v5, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    iget-wide v9, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyDownTime:J

    sub-long v7, v9, v7

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v9, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->action:I

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mKeyInput:Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;

    iget v10, v1, Lcom/samsung/android/wfd/WFDUibcManager$KeyInput;->keyCode:I

    iget v11, v0, Lcom/samsung/android/wfd/DeXMode;->mRepeatCount:I

    iget v12, v0, Lcom/samsung/android/wfd/DeXMode;->mMetaKey:I

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mEventFlag:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x101

    invoke-static/range {v5 .. v18}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 513
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 514
    sget-boolean v4, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_2
    :goto_0
    return-void
.end method

.method injectInputScrollEvent()V
    .locals 25

    .line 562
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    if-gez v1, :cond_0

    .line 563
    return-void

    .line 567
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    const-string v2, "DeXMode"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 568
    iget-wide v4, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    iget-object v10, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v11, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 574
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v12

    iget v14, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 568
    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3002

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 583
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 584
    sget-boolean v3, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InjectScrollEvent Samsung Dex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_1
    goto :goto_0

    .line 589
    :cond_2
    iget-wide v4, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    const-wide/16 v6, 0xa

    sub-long v8, v4, v6

    iget-wide v4, v0, Lcom/samsung/android/wfd/DeXMode;->mScrollTime:J

    sub-long v10, v4, v6

    iget-object v14, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v15, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v23, 0x2002

    const/high16 v24, 0x8000000

    const/16 v12, 0x8

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v8 .. v24}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 605
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 606
    sget-boolean v3, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InjectScrollEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_3
    :goto_0
    return-void
.end method

.method injectInputTouchEvent()V
    .locals 24

    .line 309
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    if-gez v1, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    if-nez v1, :cond_1

    .line 314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 317
    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    const-string v2, "InjectTouchEvent: "

    const/4 v3, 0x1

    const-string v4, "DeXMode"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 319
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    .line 322
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v11

    iget-object v12, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    iget-object v13, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 319
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    move/from16 v16, v1

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 335
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    sget-boolean v6, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 336
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_2
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 339
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    goto/16 :goto_1

    .line 341
    :cond_3
    sget-boolean v1, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FROM DEX SINK TOUCH EVENT!!! : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_4
    new-array v12, v3, [Landroid/view/MotionEvent$PointerProperties;

    .line 347
    .local v12, "pointerProp":[Landroid/view/MotionEvent$PointerProperties;
    new-array v13, v3, [Landroid/view/MotionEvent$PointerCoords;

    .line 348
    .local v13, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-le v1, v3, :cond_5

    .line 349
    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    aput-object v1, v13, v5

    .line 350
    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v1, v3

    aput-object v1, v12, v5

    goto :goto_0

    .line 352
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v5

    aput-object v1, v13, v5

    .line 353
    iget-object v1, v0, Lcom/samsung/android/wfd/DeXMode;->mPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v1, v1, v5

    aput-object v1, v12, v5

    .line 356
    :goto_0
    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const-string v6, "InjectTouchEvent: fakeEvent "

    if-nez v1, :cond_8

    .line 357
    move-object v1, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 363
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    iget v11, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 357
    move/from16 v16, v11

    const/4 v11, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3002

    const/16 v22, 0x0

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 372
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 375
    move-object v8, v6

    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 376
    move-object v10, v8

    .end local v8    # "motionEvent":Landroid/view/MotionEvent;
    .local v10, "motionEvent":Landroid/view/MotionEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 381
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    iget v11, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 375
    move-object/from16 v16, v10

    .end local v10    # "motionEvent":Landroid/view/MotionEvent;
    .local v16, "motionEvent":Landroid/view/MotionEvent;
    const/16 v10, 0xb

    move-object/from16 v17, v16

    move/from16 v16, v11

    .end local v16    # "motionEvent":Landroid/view/MotionEvent;
    .local v17, "motionEvent":Landroid/view/MotionEvent;
    const/4 v11, 0x1

    move-object/from16 v18, v17

    .end local v17    # "motionEvent":Landroid/view/MotionEvent;
    .local v18, "motionEvent":Landroid/view/MotionEvent;
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v19, v18

    .end local v18    # "motionEvent":Landroid/view/MotionEvent;
    .local v19, "motionEvent":Landroid/view/MotionEvent;
    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v20, v19

    .end local v19    # "motionEvent":Landroid/view/MotionEvent;
    .local v20, "motionEvent":Landroid/view/MotionEvent;
    const/16 v19, 0x0

    move-object/from16 v21, v20

    .end local v20    # "motionEvent":Landroid/view/MotionEvent;
    .local v21, "motionEvent":Landroid/view/MotionEvent;
    const/16 v20, 0x0

    move-object/from16 v22, v21

    .end local v21    # "motionEvent":Landroid/view/MotionEvent;
    .local v22, "motionEvent":Landroid/view/MotionEvent;
    const/16 v21, 0x3002

    move-object/from16 v23, v22

    .end local v22    # "motionEvent":Landroid/view/MotionEvent;
    .local v23, "motionEvent":Landroid/view/MotionEvent;
    const/16 v22, 0x0

    move-object/from16 v3, v23

    .end local v23    # "motionEvent":Landroid/view/MotionEvent;
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 390
    .local v6, "fakeEvent":Landroid/view/MotionEvent;
    iget v7, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 391
    sget-boolean v7, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_6
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 395
    sget-boolean v2, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_7
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 399
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "fakeEvent":Landroid/view/MotionEvent;
    goto/16 :goto_1

    :cond_8
    move-object v1, v6

    iget v3, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    .line 401
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 407
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v3, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 401
    const/16 v10, 0xc

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3002

    const/16 v22, 0x0

    move/from16 v16, v3

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 416
    .local v3, "fakeEvent":Landroid/view/MotionEvent;
    iget v6, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    invoke-virtual {v3, v6}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 418
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    iget v11, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 418
    move/from16 v16, v11

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    .line 433
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v6, v5}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 435
    sget-boolean v7, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_9
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 439
    sget-boolean v1, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v1, :cond_a

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_a
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 443
    iput v5, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    .line 444
    .end local v3    # "fakeEvent":Landroid/view/MotionEvent;
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    goto :goto_1

    .line 445
    :cond_b
    iget-wide v6, v0, Lcom/samsung/android/wfd/DeXMode;->mTouchDownTime:J

    .line 446
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v10, v0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 451
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/hardware/input/InputManager;->getGlobalMetaState(I)I

    move-result v14

    iget v15, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    iget v1, v0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayID:I

    .line 445
    const/4 v11, 0x1

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3002

    const/16 v22, 0x0

    move/from16 v16, v1

    invoke-static/range {v6 .. v22}, Landroid/view/MotionEvent;->semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 460
    .restart local v1    # "motionEvent":Landroid/view/MotionEvent;
    iget v3, v0, Lcom/samsung/android/wfd/DeXMode;->mButtonStateForDeX:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setActionButton(I)V

    .line 461
    sget-boolean v3, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_c
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 468
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v12    # "pointerProp":[Landroid/view/MotionEvent$PointerProperties;
    .end local v13    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v5, v0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcStartTime:J

    sub-long/2addr v1, v5

    const-wide/16 v5, 0xfa0

    cmp-long v1, v1, v5

    if-lez v1, :cond_e

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcStartTime:J

    .line 470
    sget-boolean v1, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v1, :cond_d

    .line 471
    const-string v1, "Delete mobile cursor"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_d
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/hardware/input/InputManager;->forceFadeIcon(I)V

    .line 476
    :cond_e
    return-void
.end method

.method setScrollPointerCoords()V
    .locals 8

    .line 522
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->scrollBit:I

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    .line 523
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->direction:I

    if-nez v0, :cond_0

    .line 524
    iget v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    .line 527
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 528
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 531
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    const/4 v5, 0x6

    if-eqz v1, :cond_2

    .line 532
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget-object v6, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 533
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget-object v6, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v1, v0, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v0, v5, :cond_1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_1

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v0, v4, :cond_5

    .line 538
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_1

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    const/4 v6, 0x0

    if-ne v1, v5, :cond_3

    .line 544
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 545
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget v6, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v6, v6

    invoke-virtual {v1, v0, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto :goto_0

    .line 546
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollInput:Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;

    iget v1, v1, Lcom/samsung/android/wfd/WFDUibcManager$ScrollInput;->action:I

    if-ne v1, v4, :cond_4

    .line 547
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    iget v7, p0, Lcom/samsung/android/wfd/DeXMode;->mScrollValue:I

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 548
    iget-object v1, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 550
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/16 v1, 0x8

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 551
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x3

    const v2, 0x3d23d70a    # 0.04f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x4

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 554
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/4 v1, 0x5

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v0, v0, v3

    invoke-virtual {v0, v4, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 558
    :cond_5
    :goto_1
    return-void
.end method

.method updateDisplayInformation()V
    .locals 2

    .line 98
    const-string v0, "DeXMode"

    const-string v1, "Update Dex Display Information"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/wfd/DeXMode;->isValidToUpdateDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wfd/DeXMode;->updateDisplayValue()V

    .line 103
    return-void
.end method

.method updateTouchPointerTable()Z
    .locals 9

    .line 137
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v0, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointers:I

    const/4 v3, 0x1

    const-string v4, "DeXMode"

    if-ge v0, v2, :cond_c

    .line 141
    sget-boolean v2, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Input Pointer ID : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", X: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", Y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    const v6, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 146
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    mul-float/2addr v5, v6

    iput v5, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 148
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mModeType:Lcom/samsung/android/wfd/ConnectionMode$ModeType;

    invoke-interface {v2, v0}, Lcom/samsung/android/wfd/ConnectionMode$ModeType;->updateTouchInput(I)V

    .line 150
    sget-boolean v2, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output Pointer ID : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", x: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", y: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mIsSamsungMobile:Z

    if-eqz v2, :cond_9

    .line 157
    iget-boolean v2, p0, Lcom/samsung/android/wfd/DeXMode;->mDexUibcFingerEnabled:Z

    const-string v5, "Out of Range Dex screen, Skip Event"

    const/4 v6, 0x0

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    cmpg-float v2, v2, v6

    const/4 v7, 0x2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget v8, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    cmpl-float v2, v2, v8

    if-gtz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget v6, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2

    goto :goto_1

    .line 172
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 174
    const-string v2, "In Range Dex screen, Skip ACTION_MOVE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v1

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v5, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 177
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    const-string v2, "Skip ACTION_DOWN, Change to ACTION_MOVE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput v7, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    goto/16 :goto_2

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 181
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 182
    const-string v2, "Skip ACTION_UP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v1

    .line 160
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v6, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 161
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 162
    const-string v2, "Out of Range Dex screen, Change to ACTION_UP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iput v3, p0, Lcom/samsung/android/wfd/DeXMode;->mAction:I

    .line 164
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v2, p0, Lcom/samsung/android/wfd/DeXMode;->mActionIndex:I

    goto/16 :goto_3

    .line 165
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->action:I

    if-eq v2, v7, :cond_b

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 166
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 167
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v1

    .line 187
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayWidth:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iget v3, p0, Lcom/samsung/android/wfd/DeXMode;->mExternalDisplayHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 189
    :cond_8
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return v1

    .line 196
    :cond_9
    :goto_2
    new-instance v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    invoke-direct {v2}, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;-><init>()V

    .line 197
    .local v2, "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    .line 198
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->x:F

    .line 199
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchInput:Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;

    iget-object v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;->pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    iput v3, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->y:F

    .line 201
    sget-boolean v3, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 202
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

    .line 204
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    iget v4, v2, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v2    # "pointer":Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 207
    .end local v0    # "i":I
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 208
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 209
    const-string v0, "Not available PointerTable"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_d
    return v1

    .line 214
    :cond_e
    sget-boolean v0, Lcom/samsung/android/wfd/DeXMode;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 215
    const-string v0, "Stored touch pointer for scroll in wireless dex"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_f
    iget-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerTable:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    iput-object v0, p0, Lcom/samsung/android/wfd/DeXMode;->mTouchPointerForScroll:Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

    .line 219
    return v3
.end method
