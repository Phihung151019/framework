.class public final Lcom/samsung/android/game/GameManagerService;
.super Lcom/samsung/android/game/IGameManagerService$Stub;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GameManagerService$DisplayListener;,
        Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;,
        Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;,
        Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;,
        Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;,
        Lcom/samsung/android/game/GameManagerService$GameIntentType;,
        Lcom/samsung/android/game/GameManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final COUNTRY_ISO_CODE:Ljava/lang/String;

.field private static final GAMELAUNCHER_ACTION:Ljava/lang/String; = "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

.field private static final GAME_DEFAULT_FRAME_RATE_ENABLED:Ljava/lang/String; = "game_default_frame_rate_enabled"

.field private static final GAME_INTENT_SVC:Ljava/lang/String; = "com.samsung.android.game.gos.GameIntentService"

.field private static final IS_CHINA_DEVICE:Z

.field private static final MSG_UNBIND_CHECK:I = 0x271c

.field private static final PKG_GAMEBOOSTER:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field private static final PKG_GAMELAUNCHER:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field private static final PKG_GAME_BOOSTER_PLUS:Ljava/lang/String; = "com.samsung.android.game.honeyplayplus"

.field private static final PKG_GOS:Ljava/lang/String; = "com.samsung.android.game.gos"

.field private static final SIOP_MODE_OFF:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "GameManager"

.field private static final URI_GAMELAUNCHER_PREF:Ljava/lang/String; = "pref_setting_gamelauncher_need_fresh_start"


# instance fields
.field private mActionLogger:Lcom/samsung/android/game/ActionLogger;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mApBooster:Lcom/samsung/android/game/ApBooster;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

.field private mDisabledVrrControlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDssController:Lcom/android/server/DssController;

.field private mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

.field private final mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

.field private mGameManager:Landroid/app/GameManager;

.field private final mGameManagerServiceExt:Lcom/samsung/android/game/GameManagerServiceExt;

.field private mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

.field private mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

.field private mHandler:Landroid/os/Handler;

.field private mIsGameBoosterInstalled:Z

.field private mIsGameLauncherEnabled:Z

.field private mIsGosEnabled:Z

.field private mMultiUserReceiver:Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;

.field private mPkgUpdateReceiver:Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;

.field private mSdhmsReceiver:Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;

.field private mSecGameFamilyPkgChangeReceiver:Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;

.field private final mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

.field private mSiopMode:I

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mSystemHelper:Lcom/samsung/android/game/SystemHelper;

.field private mVrrModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/game/GameManagerService;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledVrrControlList(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/samsung/android/game/GameManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFgCheckThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGameDataRepository(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGosNotifyThread(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/game/GameManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGameLauncherEnabled(Lcom/samsung/android/game/GameManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGosEnabled(Lcom/samsung/android/game/GameManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecGameFamilyRepository(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVrrModeMap(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckPkgEnabledState(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAllCategoryHintUser(Lcom/samsung/android/game/GameManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->clearAllCategoryHintUser()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPackageData(Lcom/samsung/android/game/GameManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->clearPackageData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misMlPidModel(Lcom/samsung/android/game/GameManagerService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->isMlPidModel()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monUserSwitched(Lcom/samsung/android/game/GameManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->onUserSwitched(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetIS_CHINA_DEVICE()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/game/GameManagerService;->IS_CHINA_DEVICE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 148
    invoke-static {}, Lcom/samsung/android/game/Util;->getCountryIsoCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/GameManagerService;->COUNTRY_ISO_CODE:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/samsung/android/game/Util;->isChinaDevice()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/game/GameManagerService;->IS_CHINA_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;-><init>()V

    .line 152
    new-instance v0, Lcom/samsung/android/game/GameManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$1;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 168
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    .line 172
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    .line 173
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    .line 175
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 176
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

    .line 178
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    .line 179
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    .line 180
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 181
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 182
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 184
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    .line 186
    iput-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    .line 187
    iput-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    .line 188
    iput-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    .line 190
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    .line 191
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    .line 192
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    .line 1152
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    .line 205
    const-string v2, "GameManager"

    const-string v3, "ctor"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    .line 210
    new-instance v2, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-direct {v2}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    .line 211
    new-instance v2, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-direct {v2}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    .line 212
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/data/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/data/DatabaseHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    .line 213
    new-instance v2, Lcom/samsung/android/game/ActionLogger;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/ActionLogger;-><init>(Lcom/samsung/android/game/data/DatabaseHelper;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    .line 214
    new-instance v2, Lcom/samsung/android/game/GoogleGameManagerService;

    invoke-direct {v2}, Lcom/samsung/android/game/GoogleGameManagerService;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    .line 218
    new-instance v2, Lcom/samsung/android/game/ApBooster;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/ApBooster;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    .line 219
    new-instance v2, Lcom/samsung/android/game/SystemHelper;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/SystemHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 221
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 222
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 223
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/SemStatusBarManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemStatusBarManager;

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 226
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    .line 230
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.game.gos"

    iget v4, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    .line 231
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.game.gamehome"

    iget v4, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    .line 232
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.game.gametools"

    invoke-static {v2, v3}, Lcom/samsung/android/game/Util;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "lcdOn":Z
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v2, v1

    move v4, v2

    goto :goto_0

    .line 237
    :cond_1
    move v4, v2

    .line 240
    .end local v2    # "lcdOn":Z
    .local v4, "lcdOn":Z
    :goto_0
    new-instance v3, Lcom/samsung/android/game/FgCheckThread;

    iget-object v5, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    iget v7, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    iget-boolean v8, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    iget-boolean v9, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    iget-boolean v10, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/game/FgCheckThread;-><init>(ZLandroid/content/Context;Lcom/samsung/android/game/SystemHelper;IZZZ)V

    iput-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    .line 242
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v1}, Lcom/samsung/android/game/FgCheckThread;->start()V

    .line 243
    new-instance v1, Lcom/samsung/android/game/GosNotifyThread;

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/GosNotifyThread;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    .line 244
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    invoke-virtual {v1}, Lcom/samsung/android/game/GosNotifyThread;->start()V

    .line 245
    new-instance v1, Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    .line 246
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 250
    :cond_2
    new-instance v0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSdhmsReceiver:Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;

    .line 251
    new-instance v0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mPkgUpdateReceiver:Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;

    .line 252
    new-instance v0, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyPkgChangeReceiver:Lcom/samsung/android/game/GameManagerService$SecGameFamilyPkgChangeReceiver;

    .line 253
    new-instance v0, Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mMultiUserReceiver:Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;

    .line 254
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/GosClientManager;->init(Landroid/content/Context;)V

    .line 256
    new-instance v0, Lcom/samsung/android/game/GameManagerServiceExt;

    invoke-direct {v0, p1}, Lcom/samsung/android/game/GameManagerServiceExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManagerServiceExt:Lcom/samsung/android/game/GameManagerServiceExt;

    .line 259
    return-void
.end method

.method private checkPkgEnabledState(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 2082
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.game.gos"

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    .line 2083
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.game.gamehome"

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    .line 2084
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.game.gametools"

    invoke-static {v0, v1}, Lcom/samsung/android/game/Util;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    .line 2085
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    iget-boolean v3, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/FgCheckThread;->setPkgEnabledState(ZZZ)V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Now checking pkgs enabled... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         mIsGosEnabled , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        mIsGameLauncherEnabled , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        mIsGameBoosterInstalled , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    return-void
.end method

.method private checkSettingPermission()Z
    .locals 10

    .line 2059
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2060
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2061
    .local v1, "uid":I
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 2063
    :cond_0
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 2064
    return v4

    .line 2066
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 2067
    .local v3, "packages":[Ljava/lang/String;
    const-string v5, "GameManager"

    if-nez v3, :cond_2

    .line 2068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages is null. uid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    return v4

    .line 2071
    :cond_2
    array-length v6, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v3, v7

    .line 2072
    .local v8, "pkg":Ljava/lang/String;
    const-string v9, "android"

    invoke-virtual {v0, v9, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 2073
    .local v9, "match":I
    if-nez v9, :cond_3

    .line 2074
    return v2

    .line 2071
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "match":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2077
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSettingPermission(). no permission. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    return v4

    .line 2062
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_5
    :goto_1
    return v2
.end method

.method private clearAllCategoryHintUser()V
    .locals 8

    .line 911
    new-instance v0, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 912
    .local v0, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    invoke-virtual {v0}, Lcom/samsung/android/game/PmAppCategoryManager;->getAppCategoryHintUserMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 913
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearAllCategoryHintUser(), packageNames="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 916
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/samsung/android/game/PmAppCategoryManager;->clearAppCategoryHintUser(Ljava/lang/String;)V

    .line 917
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearAllCategoryHintUser(), categoryHintUser cleared, packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v5

    .line 920
    .local v5, "userId":I
    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 921
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "userId":I
    goto :goto_0

    .line 922
    :cond_0
    return-void
.end method

.method private clearGosBind()V
    .locals 6

    .line 1988
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v0

    .line 1989
    .local v0, "gosClientManager":Lcom/samsung/android/game/GosClientManager;
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1990
    const-string v1, "GameManager"

    const-string v2, "clearGosBind(), start unbindService"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->unbindService()V

    goto :goto_0

    .line 1994
    :cond_0
    const/16 v1, 0x1388

    .line 1995
    .local v1, "MSG_UNBIND_CHECK_DELAY_TIME":I
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x271c

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1997
    .end local v1    # "MSG_UNBIND_CHECK_DELAY_TIME":I
    :goto_0
    return-void
.end method

.method private clearPackageData()V
    .locals 1

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->clear()V

    .line 1186
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->clear()V

    .line 1187
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->syncAllGameConfigurationsWithSdhms()V

    .line 1188
    return-void
.end method

.method private dumpActionLogs(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1685
    const-string v0, "\nAction Log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/DatabaseHelper;->dumpAllActionLogs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method private dumpGameEventListeners(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1810
    new-instance v0, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/game/notification/GameEventNotifier;->getRegisteredListenersInfo()Ljava/util/List;

    move-result-object v0

    .line 1811
    .local v0, "registeredListenersInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "\nGameEventListeners"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1813
    const-string v1, "  no listeners"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1815
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1816
    .local v2, "info":Ljava/lang/String;
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

    .line 1817
    .end local v2    # "info":Ljava/lang/String;
    goto :goto_0

    .line 1819
    :cond_1
    :goto_1
    return-void
.end method

.method private dumpGameManagerState(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1796
    const-string v0, "\nGameManager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SERVICE_VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/game/Version;->SERVICE_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSiopMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mObservers count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v1}, Lcom/samsung/android/game/FgCheckThread;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGosEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGameLauncherEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGameBoosterInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  WifiManager.allowAutojoinGlobal() called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1}, Lcom/samsung/android/game/SystemHelper;->getBlockState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1}, Lcom/samsung/android/game/SystemHelper;->getLastBlockTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisabledVrrControlList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SystemCountryIsoCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/game/GameManagerService;->COUNTRY_ISO_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  FeatureVersionMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->getFeatureVersionMapString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1807
    return-void
.end method

.method private dumpGos(Ljava/io/PrintWriter;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "printingDb"    # Z

    .line 1690
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-eqz v0, :cond_2

    .line 1691
    const-string v0, "dumpGos(). GameOptimizer exists."

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v0

    .line 1693
    .local v0, "gosClientManager":Lcom/samsung/android/game/GosClientManager;
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1694
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->bindService()V

    .line 1696
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1697
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->dumpGosState(Ljava/io/PrintWriter;)V

    .line 1698
    if-eqz p2, :cond_2

    .line 1699
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->dumpGosDB(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 1702
    :cond_1
    const-string v2, "dumpGos(), mGosService is null, cannot print GOS data"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    .end local v0    # "gosClientManager":Lcom/samsung/android/game/GosClientManager;
    :cond_2
    :goto_0
    return-void
.end method

.method private dumpGosDB(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1710
    const-string v0, "string_array_length"

    :try_start_0
    const-string v1, "*** GameOptimizer dump starts ***"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    const/4 v1, 0x1

    .line 1713
    .local v1, "stringArrayLength":I
    const/4 v2, 0x0

    .line 1714
    .local v2, "index":I
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1715
    .local v3, "requestJson":Lorg/json/JSONObject;
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1716
    const-string v4, "index"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1718
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v4

    const-string v5, "get_encoded_database"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/game/GosClientManager;->requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1719
    .local v4, "response":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1720
    goto :goto_1

    .line 1721
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1722
    .local v5, "responseJson":Lorg/json/JSONObject;
    const-string v6, "response_index"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1723
    .local v6, "responseIndex":I
    const-string v7, "contents"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1724
    .local v7, "content":Ljava/lang/String;
    move-object v8, v0

    .line 1725
    .local v8, "STRING_ARRAY_LENGTH":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1726
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move v1, v9

    .line 1728
    :cond_1
    if-ne v2, v6, :cond_2

    if-eqz v7, :cond_2

    .line 1729
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1733
    nop

    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "responseJson":Lorg/json/JSONObject;
    .end local v6    # "responseIndex":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "STRING_ARRAY_LENGTH":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1734
    goto :goto_0

    .line 1736
    :cond_2
    :goto_1
    const-string v0, "\n*** GameOptimizer dump ends ***"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    .end local v1    # "stringArrayLength":I
    .end local v2    # "index":I
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    goto :goto_2

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    const-string v1, "*** GameOptimizer dump failed ***\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private dumpGosState(Ljava/io/PrintWriter;)V
    .locals 19
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1746
    move-object/from16 v1, p1

    const-string v2, "gms_log"

    const-string v3, "last_fully_update_time"

    const-string v0, "in_house"

    const-string v4, "last_update_time"

    const-string v5, "is_device_supported_by_server"

    const-string v6, "device_name"

    const-string v7, "GameManager"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v8

    const-string v9, "get_global_data"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/game/GosClientManager;->requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1747
    .local v8, "response":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 1748
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1750
    .local v9, "responseJson":Lorg/json/JSONObject;
    const-string v10, "\nGameOptimizer state"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1752
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_1

    .line 1754
    :try_start_1
    const-string v12, "com.samsung.android.game.gos"

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1755
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  VersionName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    const-wide/16 v15, 0x64

    rem-long/2addr v13, v15
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1757
    .local v13, "gosType":J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_0

    const/16 v15, 0x58

    goto :goto_0

    :cond_0
    const/16 v15, 0x4f

    .line 1759
    .local v15, "isGosLite":C
    :goto_0
    move-object/from16 v16, v0

    .line 1760
    .local v16, "DEVICE_TYPE":Ljava/lang/String;
    move-object/from16 v17, v8

    .end local v8    # "response":Ljava/lang/String;
    .local v17, "response":Ljava/lang/String;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  VersionCode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v18, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v18, "pm":Landroid/content/pm/PackageManager;
    :try_start_3
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " (GOS Lite: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", Device Type: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ")"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1763
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .end local v13    # "gosType":J
    .end local v15    # "isGosLite":C
    .end local v16    # "DEVICE_TYPE":Ljava/lang/String;
    goto :goto_2

    .line 1761
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    move-object/from16 v18, v11

    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_1

    .end local v17    # "response":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "response":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v18, v11

    .line 1762
    .end local v8    # "response":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v17    # "response":Ljava/lang/String;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    :try_start_4
    const-string v8, "dump(), com.samsung.android.game.gos does not exist in PackageInfo."

    invoke-static {v7, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1752
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "response":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "response":Ljava/lang/String;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move-object/from16 v17, v8

    move-object/from16 v18, v11

    .line 1765
    .end local v8    # "response":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "response":Ljava/lang/String;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    :goto_2
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  DeviceNameFromGOS: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  ModelName: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  SupportedByServer: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    :cond_3
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  LastUpdateTime: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    :cond_4
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  LastFullyUpdateTime: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    :cond_5
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1777
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    .local v0, "gmsLog":Ljava/lang/String;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1779
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 1747
    .end local v0    # "gmsLog":Ljava/lang/String;
    .end local v9    # "responseJson":Lorg/json/JSONObject;
    .end local v17    # "response":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "response":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v8

    .line 1786
    .end local v8    # "response":Ljava/lang/String;
    :cond_7
    :goto_3
    goto :goto_4

    .line 1783
    :catch_3
    move-exception v0

    .line 1784
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4
    return-void
.end method

.method private dumpPmAppCategory(Ljava/io/PrintWriter;)V
    .locals 28
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1877
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "\nApp Category in PackageManager:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1878
    new-instance v2, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v3, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 1879
    .local v2, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1881
    .local v3, "pmGamePackageNameUserIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    invoke-virtual {v2}, Lcom/samsung/android/game/PmAppCategoryManager;->getGamePackageNameListFromAllUsers()Ljava/util/List;

    move-result-object v4

    .line 1882
    .local v4, "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v5, v6}, Lcom/samsung/android/game/Util;->getInstalledPackageNameList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    .line 1884
    .local v5, "packageNamesFromMainUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 1885
    .local v6, "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/game/Util;->getSecureFolderUserId(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v7

    .line 1886
    .local v7, "secureFolderUserId":Ljava/lang/Integer;
    if-eqz v7, :cond_0

    .line 1887
    iget-object v8, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Lcom/samsung/android/game/Util;->getInstalledPackageNameList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v6

    .line 1890
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1891
    .local v9, "gamePackageName":Ljava/lang/String;
    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1892
    new-instance v10, Ljava/util/TreeSet;

    iget v11, v0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v9, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1896
    new-instance v10, Lcom/samsung/android/game/GameManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Lcom/samsung/android/game/GameManagerService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v9, v10}, Ljava/util/TreeMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/TreeSet;

    .line 1897
    .local v10, "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual {v10, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1899
    .end local v9    # "gamePackageName":Ljava/lang/String;
    .end local v10    # "userIdSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_2
    goto :goto_0

    .line 1901
    :cond_3
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1902
    const-string v8, "  There are no apps set as game categories in PM."

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    return-void

    .line 1905
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/game/PmAppCategoryManager;->getAppCategoryHintUserMap()Ljava/util/Map;

    move-result-object v8

    .line 1906
    .local v8, "appCategoryHintUserMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v8, :cond_5

    .line 1907
    const-string v9, "  Error! appCategoryHintUserMap is null"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1908
    return-void

    .line 1913
    :cond_5
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 1915
    .local v9, "pkgNamePmAppInfoMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;>;"
    const-string v10, "Installer"

    .line 1916
    .local v10, "installerTitle":Ljava/lang/String;
    const-string v11, "Installer"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 1919
    .local v12, "installerLettersMaxLength":I
    iget-object v13, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1920
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1921
    .local v15, "gamePackageName":Ljava/lang/String;
    new-instance v0, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;

    invoke-direct {v0, v13, v2, v15}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;-><init>(Landroid/content/pm/PackageManager;Lcom/samsung/android/game/PmAppCategoryManager;Ljava/lang/String;)V

    .line 1923
    .local v0, "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    move-object/from16 v16, v2

    .end local v2    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .local v16, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    invoke-virtual {v0}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1924
    .local v2, "installerPackageName":Ljava/lang/String;
    move-object/from16 v17, v4

    .end local v4    # "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1925
    .local v4, "tempLength":I
    if-le v4, v12, :cond_6

    .line 1926
    move v12, v4

    .line 1929
    :cond_6
    invoke-virtual {v3, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/TreeSet;

    .line 1930
    .local v18, "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    if-eqz v18, :cond_8

    .line 1931
    invoke-virtual/range {v18 .. v18}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v21, v2

    .end local v2    # "installerPackageName":Ljava/lang/String;
    .local v21, "installerPackageName":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1932
    .local v2, "userId":I
    invoke-virtual {v0, v2}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->addUserId(I)V

    .line 1933
    .end local v2    # "userId":I
    move-object/from16 v2, v21

    goto :goto_2

    .line 1931
    .end local v21    # "installerPackageName":Ljava/lang/String;
    .local v2, "installerPackageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v21, v2

    .end local v2    # "installerPackageName":Ljava/lang/String;
    .restart local v21    # "installerPackageName":Ljava/lang/String;
    goto :goto_3

    .line 1930
    .end local v21    # "installerPackageName":Ljava/lang/String;
    .restart local v2    # "installerPackageName":Ljava/lang/String;
    :cond_8
    move-object/from16 v21, v2

    .line 1935
    .end local v2    # "installerPackageName":Ljava/lang/String;
    .restart local v21    # "installerPackageName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9, v15, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    .end local v0    # "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    .end local v4    # "tempLength":I
    .end local v15    # "gamePackageName":Ljava/lang/String;
    .end local v18    # "userIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v21    # "installerPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_1

    .line 1939
    .end local v16    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .end local v17    # "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .local v4, "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v2    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .end local v4    # "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .restart local v17    # "pmGamePackageNameListFromAllUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "  Game (Manifest excluded):"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    %-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "s  %-8s  %-15s  %-6s  %s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "UserId"

    const-string v15, "PackageName"

    move-object/from16 v18, v3

    .end local v3    # "pmGamePackageNameUserIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    .local v18, "pmGamePackageNameUserIdMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    const-string v3, "Source"

    move-object/from16 v19, v5

    .end local v5    # "packageNamesFromMainUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "packageNamesFromMainUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "[D, U, S, O, (M)]"

    filled-new-array {v11, v3, v5, v14, v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1942
    const-string v0, "    ----------------------------------------------------------------"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    invoke-virtual {v9}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1944
    .local v3, "gamePackageName":Ljava/lang/String;
    invoke-virtual {v9, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;

    .line 1945
    .local v5, "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    if-eqz v5, :cond_10

    .line 1946
    invoke-virtual {v5}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->getUserIdCsv()Ljava/lang/String;

    move-result-object v11

    .line 1947
    .local v11, "userId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1948
    .local v14, "installerPackageName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->getCategorySource()Ljava/lang/String;

    move-result-object v15

    .line 1951
    .local v15, "categorySource":Ljava/lang/String;
    move-object/from16 v20, v0

    invoke-virtual {v5}, Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;->getCategoryInfo()[Ljava/lang/String;

    move-result-object v0

    .line 1953
    .local v0, "categoryInfo":[Ljava/lang/String;
    move-object/from16 v21, v5

    .end local v5    # "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    .local v21, "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    const/4 v5, 0x5

    move-object/from16 v22, v6

    .end local v6    # "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v22, "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v6, v5, [Ljava/lang/String;

    .line 1954
    .local v6, "categoryInfoInPriority":[Ljava/lang/String;
    if-eqz v0, :cond_f

    move-object/from16 v23, v7

    .end local v7    # "secureFolderUserId":Ljava/lang/Integer;
    .local v23, "secureFolderUserId":Ljava/lang/Integer;
    array-length v7, v0

    if-lt v7, v5, :cond_e

    .line 1955
    const/4 v5, 0x4

    aget-object v7, v0, v5

    const/16 v24, 0x0

    aput-object v7, v6, v24

    .line 1956
    const/4 v7, 0x2

    aget-object v25, v0, v7

    const/16 v26, 0x1

    aput-object v25, v6, v26

    .line 1957
    const/16 v25, 0x3

    aget-object v27, v0, v25

    aput-object v27, v6, v7

    .line 1958
    aget-object v7, v0, v26

    aput-object v7, v6, v25

    .line 1959
    aget-object v7, v0, v24

    aput-object v7, v6, v5

    .line 1960
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    array-length v5, v6

    if-ge v7, v5, :cond_d

    .line 1961
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v0

    .end local v0    # "categoryInfo":[Ljava/lang/String;
    .local v25, "categoryInfo":[Ljava/lang/String;
    aget-object v0, v6, v7

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1962
    const/4 v0, 0x4

    if-ne v7, v0, :cond_a

    .line 1963
    const-string v5, "   "

    aput-object v5, v6, v7

    goto :goto_6

    .line 1965
    :cond_a
    const-string v5, " "

    aput-object v5, v6, v7

    goto :goto_6

    .line 1968
    :cond_b
    const/4 v0, 0x4

    if-ne v7, v0, :cond_c

    .line 1969
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v5, v6, v7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 1960
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    const/4 v5, 0x4

    goto :goto_5

    .end local v25    # "categoryInfo":[Ljava/lang/String;
    .restart local v0    # "categoryInfo":[Ljava/lang/String;
    :cond_d
    move-object/from16 v25, v0

    .end local v0    # "categoryInfo":[Ljava/lang/String;
    .restart local v25    # "categoryInfo":[Ljava/lang/String;
    goto :goto_7

    .line 1954
    .end local v7    # "i":I
    .end local v25    # "categoryInfo":[Ljava/lang/String;
    .restart local v0    # "categoryInfo":[Ljava/lang/String;
    :cond_e
    move-object/from16 v25, v0

    .end local v0    # "categoryInfo":[Ljava/lang/String;
    .restart local v25    # "categoryInfo":[Ljava/lang/String;
    goto :goto_7

    .end local v23    # "secureFolderUserId":Ljava/lang/Integer;
    .end local v25    # "categoryInfo":[Ljava/lang/String;
    .restart local v0    # "categoryInfo":[Ljava/lang/String;
    .local v7, "secureFolderUserId":Ljava/lang/Integer;
    :cond_f
    move-object/from16 v25, v0

    move-object/from16 v23, v7

    .line 1975
    .end local v0    # "categoryInfo":[Ljava/lang/String;
    .end local v7    # "secureFolderUserId":Ljava/lang/Integer;
    .restart local v23    # "secureFolderUserId":Ljava/lang/Integer;
    .restart local v25    # "categoryInfo":[Ljava/lang/String;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1976
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v14, v15, v5, v11, v3}, [Ljava/lang/Object;

    move-result-object v5

    .line 1975
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 1945
    .end local v11    # "userId":Ljava/lang/String;
    .end local v14    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "categorySource":Ljava/lang/String;
    .end local v21    # "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    .end local v22    # "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "secureFolderUserId":Ljava/lang/Integer;
    .end local v25    # "categoryInfo":[Ljava/lang/String;
    .restart local v5    # "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    .local v6, "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "secureFolderUserId":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    .line 1978
    .end local v3    # "gamePackageName":Ljava/lang/String;
    .end local v5    # "packageInstallationInfo":Lcom/samsung/android/game/PmAppCategoryManager$PackageInstallationInfo;
    .end local v6    # "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "secureFolderUserId":Ljava/lang/Integer;
    .restart local v22    # "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "secureFolderUserId":Ljava/lang/Integer;
    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    goto/16 :goto_4

    .line 1979
    .end local v22    # "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "secureFolderUserId":Ljava/lang/Integer;
    .restart local v6    # "packageNamesFromSecureFolder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "secureFolderUserId":Ljava/lang/Integer;
    :cond_11
    return-void
.end method

.method private dumpSgmPackageData(Ljava/io/PrintWriter;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1835
    const-string v0, "\nPackage Data in SGM:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    const-string v3, "%-10s"

    const-string v4, "    "

    const-string v5, "    ----------------------------------------------------------------"

    if-nez v0, :cond_2

    .line 1837
    const-string v0, "  Game:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    const-string v0, "    UserId    DSS     GameSDK     PackageName"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1839
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->getPkgNameUserIdsSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1841
    .local v6, "pkgNameUserIds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1842
    .local v7, "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 1843
    .local v8, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1844
    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1846
    .local v11, "userId":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1847
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    :cond_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1850
    .end local v11    # "userId":I
    goto :goto_1

    .line 1851
    :cond_1
    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1852
    invoke-direct {p0, v7}, Lcom/samsung/android/game/GameManagerService;->getGameConfigDump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1853
    .end local v6    # "pkgNameUserIds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 1856
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1857
    const-string v0, "  SecGameFamily:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    const-string v0, "    UserId    PackageName"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->getPkgNameUserIdsSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1861
    .local v5, "pkgNameUserIds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 1862
    .local v6, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1863
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1865
    .local v9, "userId":I
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 1866
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    :cond_3
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1869
    .end local v9    # "userId":I
    goto :goto_3

    .line 1870
    :cond_4
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1871
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    .end local v5    # "pkgNameUserIds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    .end local v6    # "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    goto :goto_2

    .line 1874
    :cond_5
    return-void
.end method

.method private getActionLogPackageConfig(Lcom/samsung/android/game/SemPackageConfiguration;)Ljava/lang/String;
    .locals 5
    .param p1, "config"    # Lcom/samsung/android/game/SemPackageConfiguration;

    .line 2031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2032
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 2033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2036
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategory()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2037
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v1, :cond_2

    .line 2038
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/DssController;->getDssForPackage(Ljava/lang/String;)F

    move-result v1

    .line 2039
    .local v1, "dss":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 2040
    const-string v2, "DSS OFF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2042
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    .end local v1    # "dss":F
    :cond_2
    :goto_0
    nop

    .line 2046
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/game/PerformancePolicyParser;->parse(Ljava/lang/String;)Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;

    move-result-object v1

    .line 2047
    .local v1, "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", GameSDK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuMinPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuMinPercent:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->isGameSdkSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2048
    iget-object v2, v1, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->governorSetting:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", GovernorSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->governorSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2053
    .end local v1    # "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAppCategoryHintUserMapJson()Ljava/lang/String;
    .locals 2

    .line 925
    new-instance v0, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/game/PmAppCategoryManager;->getAppCategoryHintUserMap()Ljava/util/Map;

    move-result-object v0

    .line 926
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAvailableRefreshRateList()Ljava/lang/String;
    .locals 11

    .line 745
    const-string v0, "GameManager"

    const/4 v1, 0x0

    .line 748
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 749
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 751
    .local v4, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 753
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 754
    .local v5, "refreshRateModeIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Integer;>;"
    iget-object v6, v4, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v7, v6

    :goto_0
    if-ge v3, v7, :cond_1

    aget-object v8, v6, v3

    .line 755
    .local v8, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 756
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .end local v8    # "mode":Landroid/view/Display$Mode;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 759
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableRefreshRateList()-modes from getDisplayInfo(): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 762
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 763
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Integer;>;"
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 765
    .local v8, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "value_float_1"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v9, "value_int_1"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 768
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 770
    goto :goto_2

    .line 769
    :catch_0
    move-exception v9

    .line 771
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Integer;>;"
    .end local v8    # "json":Lorg/json/JSONObject;
    :goto_2
    goto :goto_1

    .line 773
    :cond_2
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 774
    .local v6, "responseJson":Lorg/json/JSONObject;
    const-string v7, "value_array_1"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    .line 779
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v5    # "refreshRateModeIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Integer;>;"
    .end local v6    # "responseJson":Lorg/json/JSONObject;
    goto :goto_3

    .line 777
    :catch_1
    move-exception v2

    .line 778
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableRefreshRateList()-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method

.method private getFeatureVersionJson()Ljava/lang/String;
    .locals 8

    .line 691
    const-string v0, "GameManager"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 694
    .local v1, "responseJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/Meta$Feature;->getFeatureNames()Ljava/util/Set;

    move-result-object v2

    .line 695
    .local v2, "featureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 696
    .local v4, "featureName":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/game/Meta$Feature;->getVersion(Ljava/lang/String;)I

    move-result v5

    .line 697
    .local v5, "version":I
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 698
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFeatureVersionJson(), feature="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v4    # "featureName":Ljava/lang/String;
    .end local v5    # "version":I
    goto :goto_0

    .line 702
    .end local v2    # "featureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 700
    :catch_0
    move-exception v2

    .line 701
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "getFeatureVersionJson()"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 704
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFeatureVersionMapString()Ljava/lang/String;
    .locals 7

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1823
    .local v0, "featureVersionMapString":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/samsung/android/game/Meta$Feature;->getFeatureNames()Ljava/util/Set;

    move-result-object v1

    .line 1824
    .local v1, "featureNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1825
    .local v3, "featureName":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/game/Meta$Feature;->getVersion(Ljava/lang/String;)I

    move-result v4

    .line 1826
    .local v4, "version":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1827
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1830
    .end local v3    # "featureName":Ljava/lang/String;
    .end local v4    # "version":I
    goto :goto_0

    .line 1831
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getGameConfigDump(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2001
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->getGameConfig(Ljava/lang/String;)Lcom/samsung/android/game/SemPackageConfiguration;

    move-result-object v1

    .line 2002
    .local v1, "gameConfig":Lcom/samsung/android/game/SemPackageConfiguration;
    if-nez v1, :cond_0

    .line 2003
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2007
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    const-string v3, "%-8s"

    if-eqz v2, :cond_2

    .line 2008
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v2, p1}, Lcom/android/server/DssController;->getDssForPackage(Ljava/lang/String;)F

    move-result v2

    .line 2009
    .local v2, "dss":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    .line 2010
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "OFF"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2012
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%1.4f  "

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2014
    .end local v2    # "dss":F
    :goto_0
    goto :goto_1

    .line 2015
    :cond_2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :goto_1
    nop

    .line 2020
    invoke-virtual {v1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/game/PerformancePolicyParser;->parse(Ljava/lang/String;)Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;

    move-result-object v2

    .line 2021
    .local v2, "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v4, v2, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuMinPercent:I

    .line 2022
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuMinPercent:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v6, v2, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->isGameSdkSupported:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 2021
    const-string v5, "%2d/%2d/%-5b "

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2025
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPropGameDefaultFrameRate()Ljava/lang/String;
    .locals 3

    .line 708
    const-string v0, "debug.graphics.game_default_frame_rate.disabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 709
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropGameDefaultFrameRate() ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isMlPidModel()Z
    .locals 2

    .line 1433
    const-string v0, "dev.ssrm.gamelevel"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, "propValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isVariableRefreshRateSupported()Ljava/lang/String;
    .locals 2

    .line 734
    const/4 v0, 0x0

    .line 738
    .local v0, "response":Ljava/lang/String;
    const-string v1, "3"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 739
    .local v1, "isVrrSupported":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    .line 741
    return-object v0
.end method

.method static synthetic lambda$dumpPmAppCategory$0(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 1896
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method private onUserSwitched(I)V
    .locals 5
    .param p1, "newUserId"    # I

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitched, newUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v0, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    .line 295
    return-void

    .line 298
    :cond_0
    iput p1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    .line 299
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->setCurrentUserId(I)V

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->clearPackageData()V

    .line 301
    new-instance v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;

    invoke-direct {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;->loadGameDataIncludingSecureFolder(Landroid/content/Context;I)V

    .line 303
    const-string v0, "onUserSwitched"

    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V

    .line 304
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/GosNotifyThread;->sendUserSwitchMessage()V

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.game.gametools"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 315
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->uninstallGamePlugins()V

    .line 316
    return-void
.end method

.method private printAllDssInfoToLogcat()V
    .locals 1

    .line 1982
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v0}, Lcom/android/server/DssController;->showAllDSSInfo()V

    .line 1985
    :cond_0
    return-void
.end method

.method private printDumpMark(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1791
    const-string v0, "SGM SGM DUMP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1792
    const-string v0, "GOS GOS DUMP (deprecated)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    return-void
.end method

.method private putBoolToStrJson(Z)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Z

    .line 954
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 956
    .local v0, "responseJson":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "value_bool_1"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    goto :goto_0

    .line 957
    :catch_0
    move-exception v1

    .line 958
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 960
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private rearrangePackageData(Ljava/util/Map;Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;)V
    .locals 9
    .param p2, "packageDataRepository"    # Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;",
            ")V"
        }
    .end annotation

    .line 483
    .local p1, "newPkgNameCategoryUserIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p2}, Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;->getPkgNameUserIdsSet()Ljava/util/Set;

    move-result-object v0

    .line 484
    .local v0, "existingPkgNameUserIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 485
    .local v2, "existingPkgNameUserId":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 486
    .local v3, "existingPkgName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/TreeSet;

    .line 488
    .local v4, "existingUserIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 489
    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 490
    .local v6, "userId":I
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 491
    .local v7, "newUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 492
    invoke-interface {p2, v3, v6}, Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;->remove(Ljava/lang/String;I)V

    .line 494
    .end local v6    # "userId":I
    .end local v7    # "newUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_2

    .line 496
    :cond_2
    invoke-interface {p2, v3}, Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;->removeFromAllUserIds(Ljava/lang/String;)V

    .line 498
    .end local v2    # "existingPkgNameUserId":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/TreeSet<Ljava/lang/Integer;>;>;"
    .end local v3    # "existingPkgName":Ljava/lang/String;
    .end local v4    # "existingUserIds":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :goto_2
    goto :goto_0

    .line 499
    :cond_3
    return-void
.end method

.method private requestToClearAppCategoryHintUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestToClearAppCategoryHintUser(), jsonParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/4 v0, 0x0

    .line 894
    .local v0, "successful":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 895
    .local v2, "requestJson":Lorg/json/JSONObject;
    const-string v3, "package_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 897
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v5, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 898
    .local v4, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    invoke-virtual {v4, v3}, Lcom/samsung/android/game/PmAppCategoryManager;->clearAppCategoryHintUser(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v5

    .line 901
    .local v5, "userId":I
    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v3, v5}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    const/4 v0, 0x1

    .line 906
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .end local v5    # "userId":I
    goto :goto_0

    .line 904
    :catch_0
    move-exception v2

    .line 905
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestToClearAppCategoryHintUser()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 907
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private requestToRemoveRefreshRate(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 830
    const-string v0, "package_name_list"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestToRemoveRefreshRate(), jsonParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "log":Ljava/lang/String;
    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v4, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 834
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 837
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 839
    .local v4, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 840
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 842
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "pkgNameCsv":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 845
    .local v5, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_2

    goto :goto_1

    .line 849
    :cond_2
    const-class v6, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    .line 850
    .local v6, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 851
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 852
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 854
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestToRemoveRefreshRate(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disabled by GameSDK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    goto :goto_0

    .line 857
    :cond_3
    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerInternal;->removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V

    .line 859
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 860
    :cond_5
    invoke-direct {p0, v7}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 846
    .end local v6    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_6
    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 861
    .end local v0    # "pkgNameCsv":Ljava/lang/String;
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "requestToRemoveRefreshRate()-remote exception"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestToSetAppCategoryHintUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestToSetAppCategoryHintUser(), jsonParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v0, 0x0

    .line 872
    .local v0, "successful":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 873
    .local v2, "requestJson":Lorg/json/JSONObject;
    const-string v3, "package_name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "category_hint"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 876
    .local v4, "requestedCategoryHint":I
    new-instance v5, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 877
    .local v5, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/game/PmAppCategoryManager;->setAppCategoryHintUser(Ljava/lang/String;I)V

    .line 879
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v6

    .line 880
    .local v6, "userId":I
    iget-object v7, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    const/16 v8, 0x9

    invoke-virtual {v7, v8, v3, v6}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    const/4 v0, 0x1

    .line 885
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "requestedCategoryHint":I
    .end local v5    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    .end local v6    # "userId":I
    goto :goto_0

    .line 883
    :catch_0
    move-exception v2

    .line 884
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "requestToSetAppCategoryHintUser()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 886
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private requestToSetRefreshRate(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 784
    const-string v0, "display_mode_id_list"

    const-string v1, "package_name_list"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestToSetRefreshRate(), jsonParam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "log":Ljava/lang/String;
    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v5, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 788
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 791
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 793
    .local v5, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 794
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_3

    .line 797
    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "pkgNameCsv":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "displayModeIdCsv":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 800
    .local v6, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 803
    .local v7, "displayModeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 804
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    goto :goto_2

    .line 808
    :cond_2
    const-class v8, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowManagerInternal;

    .line 809
    .local v8, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 810
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 811
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 812
    .local v11, "displayModeId":I
    iget-object v12, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    if-eqz v12, :cond_4

    if-eqz v10, :cond_4

    .line 813
    iget-object v12, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object v12, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 815
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestToSetRefreshRate(), "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " disabled by GameSDK"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    goto :goto_1

    .line 818
    :cond_3
    invoke-virtual {v8, v10, v11}, Lcom/android/server/wm/WindowManagerInternal;->addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V

    .line 809
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "displayModeId":I
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 822
    .end local v9    # "i":I
    :cond_5
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 805
    .end local v8    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_6
    :goto_2
    invoke-direct {p0, v4}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 795
    .end local v0    # "displayModeIdCsv":Ljava/lang/String;
    .end local v1    # "pkgNameCsv":Ljava/lang/String;
    .end local v6    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "displayModeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-direct {p0, v4}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 823
    .end local v5    # "requestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "requestToSetRefreshRate()-remote exception"

    invoke-static {v3, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private respondWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "response":Ljava/lang/String;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 600
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "boost_acquire"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "clear_app_category_hint_user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "set_threads_affinities"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "set_render_thread_affinity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "set_app_category_hint_user"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "request_to_set_refresh_rate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "get_sysfs_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "unset_render_thread_affinity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "get_thread_names"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "boost_release"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "get_pid_uid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "write_file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "get_network_stats"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "set_app_info_categories"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "boost_set_dvfs_value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "get_available_refresh_rate_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "is_variable_refresh_rate_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "get_prop_game_default_frame_rate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "get_app_category_hint_user_map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    goto :goto_1

    :sswitch_13
    const-string v1, "set_thread_affinity_littlecore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xe

    goto :goto_1

    :sswitch_14
    const-string v1, "get_thread_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x13

    goto :goto_1

    :sswitch_15
    const-string v1, "get_thread_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_16
    const-string v1, "get_feature_version_map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1a

    goto :goto_1

    :sswitch_17
    const-string v1, "request_to_remove_refresh_rate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_18
    const-string v1, "control_wifi_switch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_1

    :sswitch_19
    const-string v1, "toggle_game_default_frame_rate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x18

    goto :goto_1

    :sswitch_1a
    const-string v1, "set_thread_affinity_bigcore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v4, "GameManager"

    packed-switch v1, :pswitch_data_0

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondWithJson. wrong command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 680
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->getFeatureVersionJson()Ljava/lang/String;

    move-result-object v0

    .line 681
    goto/16 :goto_2

    .line 677
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->getPropGameDefaultFrameRate()Ljava/lang/String;

    move-result-object v0

    .line 678
    goto/16 :goto_2

    .line 674
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->toggleGameDefaultFrameRate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    goto/16 :goto_2

    .line 671
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->setAppInfoCategories(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    goto/16 :goto_2

    .line 668
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->getAppCategoryHintUserMapJson()Ljava/lang/String;

    move-result-object v0

    .line 669
    goto/16 :goto_2

    .line 665
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->requestToClearAppCategoryHintUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    goto/16 :goto_2

    .line 662
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->requestToSetAppCategoryHintUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    goto/16 :goto_2

    .line 659
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    goto/16 :goto_2

    .line 656
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getThreadNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    goto/16 :goto_2

    .line 653
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->callEnableWifiSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    goto/16 :goto_2

    .line 650
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getThreadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    goto/16 :goto_2

    .line 647
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->setThreadsAffinities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    goto/16 :goto_2

    .line 644
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/game/SystemHelper;->setThreadAffinity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    goto :goto_2

    .line 641
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/game/SystemHelper;->setThreadAffinity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    goto :goto_2

    .line 638
    :pswitch_e
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/ApBooster;->callSetDvfsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    goto :goto_2

    .line 635
    :pswitch_f
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    invoke-virtual {v1}, Lcom/samsung/android/game/ApBooster;->callRelease()Ljava/lang/String;

    move-result-object v0

    .line 636
    goto :goto_2

    .line 632
    :pswitch_10
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/ApBooster;->callAcquire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    goto :goto_2

    .line 629
    :pswitch_11
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->writeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    goto :goto_2

    .line 626
    :pswitch_12
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->requestToRemoveRefreshRate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    goto :goto_2

    .line 623
    :pswitch_13
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->requestToSetRefreshRate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 624
    goto :goto_2

    .line 620
    :pswitch_14
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->getAvailableRefreshRateList()Ljava/lang/String;

    move-result-object v0

    .line 621
    goto :goto_2

    .line 617
    :pswitch_15
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->isVariableRefreshRateSupported()Ljava/lang/String;

    move-result-object v0

    .line 618
    goto :goto_2

    .line 614
    :pswitch_16
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->unsetRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    goto :goto_2

    .line 611
    :pswitch_17
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->setRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    goto :goto_2

    .line 608
    :pswitch_18
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getPidUidFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    goto :goto_2

    .line 605
    :pswitch_19
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getNetworkStats(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    goto :goto_2

    .line 602
    :pswitch_1a
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getSysFsDataWithJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    nop

    .line 686
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondWithJson. command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\njsonParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ebf06c0 -> :sswitch_1a
        -0x6d1d454e -> :sswitch_19
        -0x6c388c44 -> :sswitch_18
        -0x613d8875 -> :sswitch_17
        -0x5f430cbd -> :sswitch_16
        -0x5ada92aa -> :sswitch_15
        -0x5ad81da6 -> :sswitch_14
        -0x592fd4ac -> :sswitch_13
        -0x57ee157a -> :sswitch_12
        -0x556695f6 -> :sswitch_11
        -0x4acd77ff -> :sswitch_10
        -0x44e69d26 -> :sswitch_f
        -0x3f3d99d6 -> :sswitch_e
        -0x2d172f2e -> :sswitch_d
        -0x286585db -> :sswitch_c
        -0x25f09624 -> :sswitch_b
        -0x1ddb984d -> :sswitch_a
        -0x13166095 -> :sswitch_9
        0x150f1c -> :sswitch_8
        0xb4508ea -> :sswitch_7
        0x102af8f8 -> :sswitch_6
        0x20d4bc15 -> :sswitch_5
        0x34d657dd -> :sswitch_4
        0x5ae77791 -> :sswitch_3
        0x5c725919 -> :sswitch_2
        0x61386592 -> :sswitch_1
        0x6683d83a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAOSPGameMode(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    const-string v1, "GameManager"

    if-nez v0, :cond_0

    .line 1155
    const-string v0, "setAOSPGameMode() get GameManager service"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/GameManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameManager;

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    .line 1158
    :cond_0
    const-string v0, "setAOSPGameMode() pkgName : "

    packed-switch p2, :pswitch_data_0

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", gameMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    return-void

    .line 1166
    :pswitch_0
    const/4 p2, 0x2

    .line 1167
    goto :goto_0

    .line 1163
    :pswitch_1
    const/4 p2, 0x1

    .line 1164
    goto :goto_0

    .line 1160
    :pswitch_2
    const/4 p2, 0x3

    .line 1161
    nop

    .line 1172
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ASOP_gameMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    goto :goto_1

    .line 1176
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAOSPGameMode is failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAppInfoCategories(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppInfoCategories(), jsonParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v0, 0x0

    .line 934
    .local v0, "successful":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 935
    .local v2, "requestJson":Lorg/json/JSONObject;
    const-string v3, "package_name_list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, "packageNameCsv":Ljava/lang/String;
    const-string v4, "category_hint"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 938
    .local v4, "categoryHint":I
    invoke-static {v3}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 939
    .local v5, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 941
    .local v6, "isGame":Z
    :goto_0
    new-instance v7, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v8, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 942
    .local v7, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 943
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v7, v9, v6}, Lcom/samsung/android/game/PmAppCategoryManager;->setOrUnsetGameCategoryWithoutCountryChecking(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    .end local v9    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 946
    :cond_1
    const/4 v0, 0x1

    .line 949
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .end local v3    # "packageNameCsv":Ljava/lang/String;
    .end local v4    # "categoryHint":I
    .end local v5    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "isGame":Z
    .end local v7    # "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    goto :goto_2

    .line 947
    :catch_0
    move-exception v2

    .line 948
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "setAppInfoCategories()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setDfs(Landroid/os/IBinder;I)Z
    .locals 7
    .param p1, "surfaceFlinger"    # Landroid/os/IBinder;
    .param p2, "fps"    # I

    .line 988
    const-string v0, "GameManager"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 989
    .local v1, "data":Landroid/os/Parcel;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 990
    return v2

    .line 993
    :cond_0
    const/4 v3, 0x0

    .line 994
    .local v3, "ret":Z
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    const/16 v4, 0x462

    .line 998
    .local v4, "TRANSACT_CODE_SET_DFS":I
    const/16 v5, 0x462

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p1, v5, v1, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 999
    .local v2, "transactRet":Z
    if-eqz v2, :cond_1

    .line 1000
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "ret":Z
    .local v0, "ret":Z
    goto :goto_0

    .line 1002
    .end local v0    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_1
    const-string v5, "setDfs(), transactRet: false"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    .end local v2    # "transactRet":Z
    :goto_0
    goto :goto_1

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v5, "setDfs(), SecurityException: Need system privilege"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1004
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 1005
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "setDfs(), RemoteException!"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1009
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1011
    return v3
.end method

.method private setPackageConfiguration(Lcom/samsung/android/game/SemPackageConfiguration;)V
    .locals 17
    .param p1, "config"    # Lcom/samsung/android/game/SemPackageConfiguration;

    .line 1072
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageConfiguration(). configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    if-nez v1, :cond_0

    .line 1074
    const-string v2, "setPackageConfiguration(). config is null"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    return-void

    .line 1078
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPackageConfiguration(). pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    if-nez v2, :cond_1

    .line 1081
    const-string v4, "setPackageConfiguration(). pkgName is null"

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    return-void

    .line 1086
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/game/Util;->getSecureFolderUserId(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    .line 1087
    .local v4, "secureFolderUserId":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 1088
    iget v5, v0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    .local v5, "userIds":[I
    goto :goto_0

    .line 1090
    .end local v5    # "userIds":[I
    :cond_2
    iget v5, v0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    filled-new-array {v5}, [I

    move-result-object v5

    .line 1092
    .restart local v5    # "userIds":[I
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageConfiguration(). userIds="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const/4 v6, 0x1

    .line 1096
    .local v6, "DSS_SUPPORTED":Z
    invoke-virtual {v1}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategory()I

    move-result v7

    .line 1097
    .local v7, "newCategory":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPackageConfiguration(). newCategory="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    new-instance v8, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v9, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    .line 1100
    .local v8, "gameEventNotifier":Lcom/samsung/android/game/notification/GameEventNotifier;
    array-length v9, v5

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v9, :cond_a

    aget v12, v5, v11

    .line 1101
    .local v12, "userId":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setPackageConfiguration(). userId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    iget-object v13, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13, v2, v12}, Lcom/samsung/android/game/Util;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v13

    .line 1105
    .local v13, "installed":Z
    const/4 v14, 0x1

    if-nez v13, :cond_3

    .line 1106
    iget-object v15, v0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    invoke-virtual {v15, v14, v2, v12}, Lcom/samsung/android/game/GosNotifyThread;->sendPackageMessage(ILjava/lang/String;I)V

    .line 1107
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v14, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->remove(Ljava/lang/String;I)V

    .line 1108
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v14, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->remove(Ljava/lang/String;I)V

    .line 1109
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setPackageConfiguration(). the package is not installed. pkgName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", userId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 1115
    :cond_3
    if-ne v7, v14, :cond_6

    .line 1116
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v14, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1117
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v14, v2, v12, v1}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->add(Ljava/lang/String;ILcom/samsung/android/game/SemPackageConfiguration;)V

    .line 1118
    invoke-virtual {v8, v10, v2, v12}, Lcom/samsung/android/game/notification/GameEventNotifier;->notifyGameEvent(ILjava/lang/String;I)V

    .line 1122
    :cond_4
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v14, :cond_5

    .line 1123
    invoke-virtual {v1}, Lcom/samsung/android/game/SemPackageConfiguration;->getDynamicSurfaceScaling()F

    move-result v14

    .line 1124
    .local v14, "dss":F
    iget-object v15, v0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v15, v2, v14}, Lcom/android/server/DssController;->addPackageData(Ljava/lang/String;F)V

    .line 1125
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setPackageConfiguration(). dss="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    .end local v14    # "dss":F
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/game/PerformancePolicyParser;->parse(Ljava/lang/String;)Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;

    move-result-object v10

    .line 1129
    .local v10, "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    iget v14, v10, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameMode:I

    invoke-direct {v0, v2, v14}, Lcom/samsung/android/game/GameManagerService;->setAOSPGameMode(Ljava/lang/String;I)V

    .line 1131
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v15, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "  ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/game/GameManagerService;->getActionLogPackageConfig(Lcom/samsung/android/game/SemPackageConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v15, v1}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 1132
    .end local v10    # "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    goto :goto_2

    .line 1133
    :cond_6
    move-object/from16 v16, v3

    iget-object v1, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v1, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1134
    iget-object v1, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v1, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->remove(Ljava/lang/String;I)V

    .line 1135
    invoke-virtual {v8, v14, v2, v12}, Lcom/samsung/android/game/notification/GameEventNotifier;->notifyGameEvent(ILjava/lang/String;I)V

    .line 1139
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v1, :cond_8

    .line 1140
    iget-object v1, v0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v1, v2}, Lcom/android/server/DssController;->removePackage(Ljava/lang/String;)V

    .line 1144
    :cond_8
    :goto_2
    const/4 v1, 0x3

    if-ne v7, v1, :cond_9

    .line 1145
    iget-object v1, v0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v1, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->add(Ljava/lang/String;I)V

    goto :goto_3

    .line 1147
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v1, v2, v12}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->remove(Ljava/lang/String;I)V

    .line 1100
    .end local v12    # "userId":I
    .end local v13    # "installed":Z
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1150
    :cond_a
    return-void
.end method

.method private syncAllGameConfigurationsWithSdhms()V
    .locals 6

    .line 1192
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->getGameConfigs()Ljava/util/Collection;

    move-result-object v0

    .line 1193
    .local v0, "gameConfigCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/game/SemPackageConfiguration;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/game/SemPackageConfiguration;

    .line 1195
    .local v1, "configArray":[Lcom/samsung/android/game/SemPackageConfiguration;
    array-length v2, v1

    const-string v3, "GameManager"

    if-nez v2, :cond_0

    .line 1196
    const-string v2, "syncAllGameConfigurationsWithSdhms(). All the game configurations of SDHMS will be cleared by sending an empty configArray."

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_0
    const-string v2, "com.sec.android.sdhms"

    .line 1201
    .local v2, "sdhmsPkgName":Ljava/lang/String;
    const-string v4, "syncAllGameConfigurationsWithSdhms(). sending intent to SDHMS."

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncAllGameConfigurationsWithSdhms(). configArray="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.sdhms.PKG_CONFIG_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.sec.android.sdhms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1205
    const-string v4, "configArray"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1206
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1207
    return-void
.end method

.method private toggleGameDefaultFrameRate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 714
    const-string v0, "GameManager"

    const/4 v1, 0x0

    .line 715
    .local v1, "successful":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 717
    .local v2, "callingId":J
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 718
    .local v4, "requestJson":Lorg/json/JSONObject;
    const-string v5, "is_enabled"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 720
    .local v5, "isEnabled":Z
    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

    if-nez v6, :cond_0

    .line 721
    new-instance v6, Lcom/samsung/android/game/GoogleGameManagerService;

    invoke-direct {v6}, Lcom/samsung/android/game/GoogleGameManagerService;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

    .line 723
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleGameDefaultFrameRate() isEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

    iget-object v7, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/game/GoogleGameManagerService;->toggleGameDefaultFrameRate(Landroid/content/Context;Z)V

    .line 725
    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "game_default_frame_rate_enabled"

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    const/4 v1, 0x1

    .line 729
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "isEnabled":Z
    goto :goto_1

    .line 727
    :catch_0
    move-exception v4

    .line 728
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "toggleGameDefaultFrameRate()"

    invoke-static {v0, v5, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 730
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private uninstallGamePlugins()V
    .locals 2

    .line 320
    const-string v0, "GameManager"

    const-string v1, "uninstallGamePlugins()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/samsung/android/game/GamePluginsUninstaller;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/GamePluginsUninstaller;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "gamePluginsUninstaller":Lcom/samsung/android/game/GamePluginsUninstaller;
    invoke-virtual {v0}, Lcom/samsung/android/game/GamePluginsUninstaller;->checkInstalledGamePlugins()V

    .line 323
    invoke-virtual {v0}, Lcom/samsung/android/game/GamePluginsUninstaller;->isAnyGamePluginInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/GamePluginsUninstaller;->hideGamePlugins(I)V

    .line 325
    invoke-virtual {v0}, Lcom/samsung/android/game/GamePluginsUninstaller;->scheduleToUninstallGamePluginsWhileDeviceIdle()V

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public disableVrrControl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 534
    const-string v0, "GameManager"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    .line 535
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableVrrControl(), pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const/4 v0, 0x1

    return v0

    .line 541
    :cond_0
    const-string v1, "disableVrrControl(), fail!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1653
    const-string v0, "GameManager"

    const-string v1, "dump(), begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump gamemanager from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1658
    return-void

    .line 1661
    :cond_0
    const/4 v0, 0x1

    .line 1662
    .local v0, "printingGosDbAndActionLogs":Z
    if-eqz p3, :cond_1

    array-length v1, p3

    if-lez v1, :cond_1

    .line 1663
    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "-s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1664
    const/4 v0, 0x0

    .line 1668
    :cond_1
    monitor-enter p0

    .line 1669
    :try_start_0
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->printDumpMark(Ljava/io/PrintWriter;)V

    .line 1670
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpGameManagerState(Ljava/io/PrintWriter;)V

    .line 1671
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpSgmPackageData(Ljava/io/PrintWriter;)V

    .line 1672
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpPmAppCategory(Ljava/io/PrintWriter;)V

    .line 1673
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpGameEventListeners(Ljava/io/PrintWriter;)V

    .line 1674
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/game/GameManagerService;->dumpGos(Ljava/io/PrintWriter;Z)V

    .line 1675
    if-eqz v0, :cond_2

    .line 1676
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpActionLogs(Ljava/io/PrintWriter;)V

    .line 1678
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->printAllDssInfoToLogcat()V

    .line 1679
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->clearGosBind()V

    .line 1682
    return-void

    .line 1679
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableVrrControl(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 549
    const-string v0, "enableVrrControl(), pkgName: "

    const-string v1, "GameManager"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 550
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 552
    :try_start_0
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 553
    .local v2, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vrrMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " add refresh rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 556
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V

    goto :goto_0

    .line 559
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remove refresh rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v2    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_1
    :goto_0
    goto :goto_1

    .line 562
    :catch_0
    move-exception v2

    .line 563
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "enableVrrControl() - remote exception!"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", listSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x1

    return v0

    .line 569
    :cond_2
    const-string v0, "enableVrrControl(), fail!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundApp()Ljava/lang/String;
    .locals 3

    .line 372
    const-string v0, "GameManager"

    const-string v1, "getForegroundApp()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_ACTIVITY_WATCHER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "se":Ljava/lang/SecurityException;
    return-object v0

    .line 381
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->getForegroundPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 390
    .local v0, "callerUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGameList():: mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v1, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/game/PmAppCategoryManager;->getGamePackageNameList(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPackageConfiguration(Ljava/lang/String;)Lcom/samsung/android/game/SemPackageConfiguration;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->getGameConfig(Ljava/lang/String;)Lcom/samsung/android/game/SemPackageConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getPackageConfigurations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;"
        }
    .end annotation

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v1}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->getGameConfigs()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTopActivityName()Ljava/lang/String;
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 575
    const-string v0, "GameManager"

    const-string v1, "getVersion."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/samsung/android/game/Version;->SERVICE_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public identifyForegroundApp()I
    .locals 4

    .line 357
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->getFocusedPkgName()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v1

    .line 359
    .local v1, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identifyForegroundApp. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-nez v2, :cond_0

    .line 362
    const-string v2, "GameService does not exist"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v2, -0x1

    return v2

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method public identifyGamePackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 337
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .local v0, "callingMethodInfo":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v0    # "callingMethodInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tracing failed"

    move-object v0, v1

    .line 342
    .local v0, "callingMethodInfo":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "identifyGamePackage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callingMethodInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 345
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-nez v1, :cond_1

    .line 346
    const-string v1, "GameService does not exist"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v1, -0x1

    return v1

    .line 349
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->containsFromAllUserIds(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public notifyAppCreated(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 513
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/game/FgCheckThread;->notifyAppCreated(Ljava/lang/String;I)V

    .line 514
    return-void
.end method

.method public onBootPhase(I)V
    .locals 7
    .param p1, "phase"    # I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase, phase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->setKeyguardManager(Landroid/app/KeyguardManager;)V

    goto/16 :goto_1

    .line 271
    :cond_0
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->registerTaskStackListener()V

    goto/16 :goto_1

    .line 273
    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootPhase().PHASE_BOOT_COMPLETED mIsGosEnabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;

    invoke-direct {v0}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataLoader;->loadGameDataIncludingSecureFolder(Landroid/content/Context;I)V

    .line 277
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v2, "SEC_FLOATING_FEATURE_GRAPHICS_CONFIG_GAME_DEFAULT_FRAMERATE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "defaultFrameRate":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootPhase().PHASE_BOOT_COMPLETED defaultFrameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, "isEnabled":Z
    const/16 v3, 0x3c

    const-string v4, "game_default_frame_rate_enabled"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v3, :cond_3

    .line 281
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    move v5, v6

    .end local v2    # "isEnabled":Z
    .local v5, "isEnabled":Z
    :cond_2
    goto :goto_0

    .line 283
    .end local v5    # "isEnabled":Z
    .restart local v2    # "isEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    move v5, v6

    .line 285
    .end local v2    # "isEnabled":Z
    .restart local v5    # "isEnabled":Z
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBootPhase().PHASE_BOOT_COMPLETED toggleGameDefaultFrameRate  GAME_DEFAULT_FRAME_RATE_ENABLED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGoogleGameManagerService:Lcom/samsung/android/game/GoogleGameManagerService;

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/game/GoogleGameManagerService;->toggleGameDefaultFrameRate(Landroid/content/Context;Z)V

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->uninstallGamePlugins()V

    .line 290
    .end local v0    # "defaultFrameRate":I
    .end local v5    # "isEnabled":Z
    :cond_5
    :goto_1
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 400
    const-string v0, "GameManager"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/FgCheckThread;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v0

    return v0
.end method

.method public registerGameEventListener(Landroid/app/PendingIntent;[IZLjava/util/List;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "targetEventArray"    # [I
    .param p3, "targetAllUsersEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "[IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 520
    .local p4, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 521
    .local v0, "targetEventList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/samsung/android/game/notification/GameEventNotifier;->registerGameEventListener(Landroid/app/PendingIntent;Ljava/util/List;ZLjava/util/List;)V

    .line 523
    return-void
.end method

.method public requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 582
    :cond_0
    const/4 v0, 0x0

    .line 584
    .local v0, "response":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/game/GameManagerService;->IS_CHINA_DEVICE:Z

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGameManagerServiceExt:Lcom/samsung/android/game/GameManagerServiceExt;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/game/GameManagerServiceExt;->respondWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    if-eqz v0, :cond_1

    .line 587
    return-object v0

    .line 590
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/GameManagerService;->respondWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    return-object v0
.end method

.method public setPackageConfigurations(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 1017
    .local p1, "packageConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1018
    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 1020
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 1022
    .local v0, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageConfigurations(). mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    if-ne v2, v0, :cond_6

    .line 1025
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v5, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPackageConfigurations() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-virtual {v7}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->getResLog()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 1026
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/game/SemPackageConfiguration;

    .line 1027
    .local v5, "config":Lcom/samsung/android/game/SemPackageConfiguration;
    if-nez v5, :cond_2

    .line 1028
    const-string v6, "setPackageConfigurations(). config is null"

    invoke-static {v3, v6}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategory()I

    move-result v6

    .line 1033
    .local v6, "category":I
    invoke-virtual {v5}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1034
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPackageConfigurations(). category="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pkgName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    sget-boolean v8, Lcom/samsung/android/game/GameManagerService;->IS_CHINA_DEVICE:Z

    if-eqz v8, :cond_4

    .line 1038
    new-instance v8, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v9, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    if-ne v6, v4, :cond_3

    move v9, v4

    goto :goto_1

    :cond_3
    move v9, v1

    :goto_1
    invoke-virtual {v8, v7, v9}, Lcom/samsung/android/game/PmAppCategoryManager;->setOrUnsetGameCategory(Ljava/lang/String;Z)V

    .line 1043
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/game/GameManagerService;->setPackageConfiguration(Lcom/samsung/android/game/SemPackageConfiguration;)V

    .line 1044
    .end local v5    # "config":Lcom/samsung/android/game/SemPackageConfiguration;
    .end local v6    # "category":I
    .end local v7    # "pkgName":Ljava/lang/String;
    goto :goto_0

    .line 1047
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->syncAllGameConfigurationsWithSdhms()V

    .line 1049
    :cond_6
    return v4
.end method

.method public setPerformanceMode(ILjava/lang/String;)Z
    .locals 5
    .param p1, "tunePerformanceMode"    # I
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 1055
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1056
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 1057
    .local v0, "callerUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPerformanceMode(), tunePerformanceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v1, v0, :cond_1

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .local v1, "logMsg":Ljava/lang/StringBuilder;
    const-string v2, "setPerformanceMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    iput p1, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    .line 1064
    const-string v2, ", SiopMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 1068
    .end local v1    # "logMsg":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public setTargetFrameRate(Landroid/os/IBinder;I)Z
    .locals 6
    .param p1, "surfaceFlinger"    # Landroid/os/IBinder;
    .param p2, "fps"    # I

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 977
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v1

    .line 978
    .local v1, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTargetFrameRate(), mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v2, v1, :cond_1

    .line 980
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/GameManagerService;->setDfs(Landroid/os/IBinder;I)Z

    move-result v0

    .line 983
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", successful: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 984
    return v0
.end method

.method public syncGameList(Ljava/util/Map;)V
    .locals 16
    .param p1, "pkgMap"    # Ljava/util/Map;

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 421
    .local v1, "newPkgNameCategoryUserIdsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    nop

    .line 423
    if-nez v1, :cond_0

    .line 424
    const-string v2, "GameManager"

    const-string v3, "syncGameList(), newPkgNameCategoryUserIdsMap is null"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void

    .line 428
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    invoke-direct {v0}, Lcom/samsung/android/game/GameManagerService;->clearPackageData()V

    .line 430
    return-void

    .line 433
    :cond_1
    new-instance v2, Lcom/samsung/android/game/PmAppCategoryManager;

    iget-object v3, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/PmAppCategoryManager;-><init>(Landroid/content/Context;)V

    .line 434
    .local v2, "pmAppCategoryManager":Lcom/samsung/android/game/PmAppCategoryManager;
    new-instance v3, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v4, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    .line 435
    .local v3, "gameEventNotifier":Lcom/samsung/android/game/notification/GameEventNotifier;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 436
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 437
    .local v6, "pkgName":Ljava/lang/String;
    if-nez v6, :cond_3

    goto :goto_0

    .line 439
    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 440
    .local v7, "categoryAndUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_0

    .line 441
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 442
    .local v8, "category":Ljava/lang/Integer;
    if-nez v8, :cond_5

    goto :goto_0

    .line 444
    :cond_5
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_c

    .line 445
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 446
    .local v10, "userId":Ljava/lang/Integer;
    if-nez v10, :cond_6

    goto/16 :goto_4

    .line 448
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v11, v13, :cond_7

    move v11, v13

    goto :goto_2

    :cond_7
    move v11, v12

    .line 449
    .local v11, "isGame":Z
    :goto_2
    sget-boolean v14, Lcom/samsung/android/game/GameManagerService;->IS_CHINA_DEVICE:Z

    if-eqz v14, :cond_8

    .line 450
    invoke-virtual {v2, v6, v11}, Lcom/samsung/android/game/PmAppCategoryManager;->setOrUnsetGameCategory(Ljava/lang/String;Z)V

    .line 452
    :cond_8
    if-eqz v11, :cond_9

    .line 453
    iget-object v14, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v6, v15}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 454
    new-instance v14, Lcom/samsung/android/game/SemPackageConfiguration;

    invoke-direct {v14, v6}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 455
    .local v14, "config":Lcom/samsung/android/game/SemPackageConfiguration;
    invoke-virtual {v14, v13}, Lcom/samsung/android/game/SemPackageConfiguration;->setCategory(I)V

    .line 456
    iget-object v13, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v6, v15, v14}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->add(Ljava/lang/String;ILcom/samsung/android/game/SemPackageConfiguration;)V

    .line 457
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v3, v12, v6, v13}, Lcom/samsung/android/game/notification/GameEventNotifier;->notifyGameEvent(ILjava/lang/String;I)V

    .line 458
    .end local v14    # "config":Lcom/samsung/android/game/SemPackageConfiguration;
    goto :goto_3

    .line 460
    :cond_9
    iget-object v12, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v6, v14}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->contains(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 461
    iget-object v12, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v12, v6, v14}, Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;->remove(Ljava/lang/String;I)V

    .line 462
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v3, v13, v6, v12}, Lcom/samsung/android/game/notification/GameEventNotifier;->notifyGameEvent(ILjava/lang/String;I)V

    .line 466
    :cond_a
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_b

    .line 467
    iget-object v12, v0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v6, v13}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->add(Ljava/lang/String;I)V

    goto :goto_4

    .line 469
    :cond_b
    iget-object v12, v0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v6, v13}, Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;->remove(Ljava/lang/String;I)V

    .line 444
    .end local v10    # "userId":Ljava/lang/Integer;
    .end local v11    # "isGame":Z
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 472
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "categoryAndUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "category":Ljava/lang/Integer;
    .end local v9    # "i":I
    :cond_c
    goto/16 :goto_0

    .line 475
    :cond_d
    iget-object v4, v0, Lcom/samsung/android/game/GameManagerService;->mGameDataRepository:Lcom/samsung/android/game/data/PackageDataRepository$GameDataRepository;

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/game/GameManagerService;->rearrangePackageData(Ljava/util/Map;Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;)V

    .line 476
    iget-object v4, v0, Lcom/samsung/android/game/GameManagerService;->mSecGameFamilyRepository:Lcom/samsung/android/game/data/PackageDataRepository$SecGameFamilyRepository;

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/game/GameManagerService;->rearrangePackageData(Ljava/util/Map;Lcom/samsung/android/game/data/PackageDataRepository$PackageDataRepositoryInterface;)V

    .line 478
    invoke-direct {v0}, Lcom/samsung/android/game/GameManagerService;->syncAllGameConfigurationsWithSdhms()V

    .line 479
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 409
    const-string v0, "GameManager"

    const-string v1, "unregisterCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/FgCheckThread;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v0

    return v0
.end method

.method public unregisterGameEventListener(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 527
    new-instance v0, Lcom/samsung/android/game/notification/GameEventNotifier;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/notification/GameEventNotifier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/notification/GameEventNotifier;->unregisterGameEventListener(Landroid/app/PendingIntent;)V

    .line 528
    return-void
.end method
