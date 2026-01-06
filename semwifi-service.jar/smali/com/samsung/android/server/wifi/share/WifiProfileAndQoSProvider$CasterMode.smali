.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CasterMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;
    }
.end annotation


# static fields
.field static final CMD_CASTER_SHARE_DATA_CHANGED:I = 0x7

.field static final CMD_CHECK_AND_START_SHARE:I = 0x1

.field static final CMD_CLEAR_HISTORY:I = 0xb

.field static final CMD_DISMISS_DIALOG:I = 0x5

.field static final CMD_SCREEN_OFF:I = 0xd

.field static final CMD_SHOW_PWD_CONFIRM_DIALOG:I = 0x3

.field static final CMD_STOP_PASSWORD_SHARE:I = 0xc

.field static final CMD_STOP_SHARE:I = 0x2

.field static final CMD_UNBIND_MCF_SERVICE:I = 0xa

.field static final CMD_UPDATE_PWD_BSSID_LIST:I = 0x9

.field static final CMD_UPDATE_QOS_DATA_POLL:I = 0x8

.field static final CMD_UPDATE_WIFI_INFO:I = 0xe

.field static final CMD_USER_CONFIRM:I = 0x4

.field static final EVENT_MCF_SERVICE_CONNECTED:I = 0x14

.field static final EVENT_PASSWORD_REQUESTED:I = 0x15

.field static final EVENT_PASSWORD_SESSION_CLOSED:I = 0x16

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Caster"


# instance fields
.field private final mActiveState:Lcom/android/internal/util/State;

.field private final mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mEnablePasswordShare:Z

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSharedApConfigKey:Ljava/lang/String;

.field private mLastSharedStaConfigKey:Ljava/lang/String;

.field private mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

.field private final mMobileWipsDetectedBssid:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifiedUserData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mShareData:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiProfileInfo:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;


# direct methods
.method public static synthetic $r8$lambda$zE-Y20wsWEpWafxXmr8W8Y-lb3w(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->lambda$start$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mActiveState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mDefaultState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSharedApConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedApConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedStaConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUpdatedQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mMobileWipsDetectedBssid:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mShareData:Landroid/util/Pair;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/util/Pair;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mShareData:Landroid/util/Pair;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiProfileInfo(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mWifiProfileInfo:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$masyncSetUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->asyncSetUserConfirm(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndGetShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->checkAndGetShareData()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearUserConfirmHistoryInternal(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->clearUserConfirmHistoryInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misIpTimeSecuredAp(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isIpTimeSecuredAp(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestToUpdateShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$mscreenOff(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->screenOff()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnableCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setEnableCaster(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetPasswordShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setPasswordShare(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartActivityForUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->startActivityForUserConfirm(ZZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->startShare(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstopShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->stopShare()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateQoSDataPoll(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSDataPoll(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiInfoAndConfig(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateWifiInfoAndConfig(Landroid/net/wifi/WifiInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Looper;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    const-string p1, "WifiProfileShare.Caster"

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mDefaultState:Lcom/android/internal/util/State;

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;

    .line 17
    .line 18
    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mActiveState:Lcom/android/internal/util/State;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v2, v1, [Ljava/lang/Class;

    .line 25
    .line 26
    const-class v3, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    .line 27
    .line 28
    aput-object v3, v2, p2

    .line 29
    .line 30
    invoke-static {v2}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iput-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mGetWhatToString:Landroid/util/SparseArray;

    .line 35
    .line 36
    new-instance v2, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v2, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mMobileWipsDetectedBssid:Ljava/util/Set;

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mEnablePasswordShare:Z

    .line 51
    .line 52
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 66
    .line 67
    .line 68
    const/16 p1, 0x20

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private asyncSetUserConfirm(ZLjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "user response to "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v1, "accept"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "reject"

    .line 14
    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " share for "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WifiProfileShare.Caster"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private checkAndGetShareData()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misKeyguardLocked(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "WifiProfileShare.Caster"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p0, "checkAndGetShareData - device locked"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mgetUltraPowerSaveEnabledFromProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string p0, "checkAndGetShareData - emergency mode"

    .line 27
    .line 28
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misEnabledNearByScanningSettings(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    const-string p0, "checkAndGetShareData - nearby scanning"

    .line 41
    .line 42
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentConfig()Landroid/util/Pair;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_6

    .line 51
    .line 52
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 61
    .line 62
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportQosProvider()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    const-string v4, "checkAndGetShareData - feature unsupported (qos share)"

    .line 73
    .line 74
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 79
    .line 80
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misEnableNetworkRecommendation(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-nez v4, :cond_4

    .line 85
    .line 86
    const-string v4, "checkAndGetShareData - not exist network rating provider"

    .line 87
    .line 88
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isAvailableToShareQoS(Landroid/net/wifi/WifiConfiguration;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    const-string v4, "checkAndGetShareData(qos) - unavailable for this config"

    .line 99
    .line 100
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_0
    move-object v4, v1

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getSharedQosInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    goto :goto_1

    .line 110
    :cond_6
    move-object v0, v1

    .line 111
    move-object v3, v0

    .line 112
    move-object v4, v3

    .line 113
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedStaConfigKey:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedApConfigKey:Ljava/lang/String;

    .line 121
    .line 122
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mEnablePasswordShare:Z

    .line 123
    .line 124
    if-nez v6, :cond_7

    .line 125
    .line 126
    const-string p0, "checkAndGetShareData(pwd) - subscriber activated"

    .line 127
    .line 128
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 134
    .line 135
    invoke-static {v6}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportWifiProfileShare()Z

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-nez v6, :cond_8

    .line 144
    .line 145
    const-string p0, "checkAndGetShareData(pwd) - feature unsupported"

    .line 146
    .line 147
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    goto/16 :goto_3

    .line 151
    .line 152
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 153
    .line 154
    invoke-static {v6}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misSharingRestricted(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_9

    .line 159
    .line 160
    const-string p0, "checkAndGetShareData(pwd) - blocked by policy"

    .line 161
    .line 162
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_9
    if-nez v0, :cond_a

    .line 167
    .line 168
    const-string v0, "checkAndGetShareData(pwd sta) - config is null"

    .line 169
    .line 170
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_a
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isAvailableToShareConfig(Landroid/net/wifi/WifiConfiguration;)Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_b

    .line 179
    .line 180
    const-string v0, "checkAndGetShareData(pwd sta) - unavailable for this config"

    .line 181
    .line 182
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_b
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    iput-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedStaConfigKey:Ljava/lang/String;

    .line 191
    .line 192
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getSharedPasswordInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    .line 198
    .line 199
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const/16 v3, 0xd

    .line 210
    .line 211
    if-ne v0, v3, :cond_e

    .line 212
    .line 213
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    if-nez v0, :cond_c

    .line 218
    .line 219
    const-string p0, "checkAndGetShareData(pwd mhs) - config is null"

    .line 220
    .line 221
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_c
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-nez v3, :cond_d

    .line 230
    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v3, "checkAndGetShareData(pwd mhs) - unavailable for this config "

    .line 234
    .line 235
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_d
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    iput-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedApConfigKey:Ljava/lang/String;

    .line 254
    .line 255
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {p0, v3, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    :cond_e
    :goto_3
    if-nez v4, :cond_f

    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-nez p0, :cond_f

    .line 277
    .line 278
    const-string p0, "checkAndGetShareData - there is no data"

    .line 279
    .line 280
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    return-object v1

    .line 284
    :cond_f
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    return-object p0
.end method

.method private clearUserConfirmHistoryInternal()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "WifiProfileShare.Caster"

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, [Ljava/lang/Boolean;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    aget-object v1, v1, v4

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->setUserConfirm(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v4, "auto reject profile sharing for "

    .line 60
    .line 61
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string v1, "already closed confirm dialog, user data "

    .line 76
    .line 77
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    const-string v0, "clear all confirm history"

    .line 86
    .line 87
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 96
    .line 97
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->clearUserRequestPasswordHistory()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private getCurrentConfig()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mWifiProfileInfo:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->getCurrentConfig()Landroid/util/Pair;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method private getCurrentNetworkScore()[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    array-length v0, v0

    .line 16
    const/4 v1, 0x4

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "Using test network type: "

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    aget v1, v1, v2

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", score ["

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    aget v1, v1, v2

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ","

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x2

    .line 67
    aget v2, v2, v3

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x3

    .line 82
    aget v1, v1, v2

    .line 83
    .line 84
    const-string v2, "]"

    .line 85
    .line 86
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v1, "WifiProfileShare.Caster"

    .line 91
    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 96
    .line 97
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 103
    .line 104
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getCurrentNetworkScore()[I

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method

.method private getNetworkType(Landroid/net/wifi/WifiConfiguration;I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WifiProfileShare.Caster"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 12
    .line 13
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 p1, 0x0

    .line 18
    aget p0, p0, p1

    .line 19
    .line 20
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "getNetworkType for test, input:"

    .line 25
    .line 26
    const-string v0, " result:"

    .line 27
    .line 28
    invoke-static {p2, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ne p2, v2, :cond_1

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-boolean p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    const-string p0, "captive portal configuration was set"

    .line 79
    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misWifiNetworkActivated(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/ConnectivityManager;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 107
    .line 108
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/ConnectivityManager;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    if-eqz p0, :cond_3

    .line 117
    .line 118
    const/16 p1, 0x11

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_3

    .line 125
    .line 126
    const-string p0, "captive portal capability was set"

    .line 127
    .line 128
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_3
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 135
    .line 136
    return-object p0
.end method

.method private getPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    aget-object p0, p0, v0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method private getSharedPasswordInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isIpTimeSecuredAp(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 25
    .line 26
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getMcfDataListForSharingPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-nez p2, :cond_1

    .line 43
    .line 44
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    :cond_1
    return-object p0
.end method

.method private getSharedQosInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentNetworkScore()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "WifiProfileShare.Caster"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v3, "current network score is empty"

    .line 11
    .line 12
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v4, "current network type: "

    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    aget v4, v0, v1

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ", score: ["

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aget v4, v0, v4

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v4, ", "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x2

    .line 45
    aget v5, v0, v5

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/4 v4, 0x3

    .line 54
    aget v4, v0, v4

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v4, "]"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->getQoSSpeedInt([I)[I

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mMobileWipsDetectedBssid:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-eqz v3, :cond_1

    .line 84
    .line 85
    const-string p2, "connected network is wips, skip to share qos"

    .line 86
    .line 87
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    sget-object p2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    aput p2, v0, v1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    aget v2, v0, v1

    .line 100
    .line 101
    invoke-direct {p0, p2, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getNetworkType(Landroid/net/wifi/WifiConfiguration;I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    aput p2, v0, v1

    .line 110
    .line 111
    :goto_1
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createQosData(Ljava/lang/String;[I)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 118
    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    .line 120
    .line 121
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmCache(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getSpeedArray()[I

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->addOrUpdateScore(Ljava/lang/String;[I)V

    .line 130
    .line 131
    .line 132
    :cond_2
    return-object p2

    .line 133
    :cond_3
    const-string p0, "failed to generate qos array, need to check network score data"

    .line 134
    .line 135
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const/4 p0, 0x0

    .line 139
    return-object p0
.end method

.method private getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "WifiProfileShare.Caster"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string p0, "ap mode: disabled"

    .line 17
    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string v0, "ap config is null from getWifiApConfiguration(), use getSoftApConfiguration()"

    .line 35
    .line 36
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 48
    .line 49
    .line 50
    move-object v0, v2

    .line 51
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getApMacAddress()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_2
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 69
    .line 70
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 71
    .line 72
    const/4 v2, 0x4

    .line 73
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    const-string v2, "\""

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_4

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v1, v3, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 130
    .line 131
    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    const/4 v1, 0x2

    .line 148
    if-eq p0, v1, :cond_5

    .line 149
    .line 150
    const/4 v1, 0x3

    .line 151
    if-ne p0, v1, :cond_6

    .line 152
    .line 153
    :cond_5
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 154
    .line 155
    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 156
    .line 157
    .line 158
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 159
    .line 160
    const/16 v1, 0x8

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 163
    .line 164
    .line 165
    :cond_6
    return-object v0
.end method

.method private isAvailableToShareConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    if-ne p0, v2, :cond_1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_1
    return v0
.end method

.method private isAvailableToShareQoS(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmQosOnlyOpenNetwork(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method private isIpTimeSecuredAp(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "\"iptime\"WPA_PSK"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const-string p0, "\"iptime5G\"WPA_PSK"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method private isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2

    .line 1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 29
    .line 30
    const/16 v1, 0xd

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 39
    .line 40
    const/16 v1, 0x8

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_1

    .line 47
    .line 48
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 58
    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    aget-object p0, p0, v1

    .line 62
    .line 63
    if-eqz p0, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return v1

    .line 67
    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$start$0(I)V
    .locals 2

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const-string v1, "WifiProfileShare.Caster"

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    .line 9
    .line 10
    .line 11
    const-string p0, "mobile hotspot activated"

    .line 12
    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/16 v0, 0xb

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    .line 23
    .line 24
    .line 25
    const-string p0, "mobile hotspot deactivated"

    .line 26
    .line 27
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private requestToUpdateShareData(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private screenOff()V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private setEnableCaster(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 p1, 0x2

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setPasswordShare(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mEnablePasswordShare:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mActiveState:Lcom/android/internal/util/State;

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    const/16 p1, 0xc

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private startActivityForUserConfirm(ZZLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "show"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "dismiss"

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " confirm dialog for "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "WifiProfileShare.Caster"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string v0, "userData"

    .line 34
    .line 35
    const-string v1, "com.android.settings"

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "com.samsung.android.settings.wifi.ProfileShareCasterDialog"

    .line 45
    .line 46
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    const-string p3, "isHotspot"

    .line 53
    .line 54
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 58
    .line 59
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 75
    .line 76
    const-string p2, "com.samsung.android.net.wifi.DISMISS_REQ_PASSWORD_DIALOG"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    if-eqz p3, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 90
    .line 91
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 96
    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :catch_1
    move-exception p0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void
.end method

.method private startShare(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0

    .line 10
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "start caster for "

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, ") "

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    const-string v2, "qos ("

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 47
    .line 48
    const-string v4, "pwd ("

    .line 49
    .line 50
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    const-string v1, "size "

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "WifiProfileShare.Caster"

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 88
    .line 89
    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->startCaster(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0
.end method

.method private stopShare()V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.Caster"

    .line 2
    .line 3
    const-string v1, "stop caster"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopAllCasterMode()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 19
    .line 20
    return-void
.end method

.method private updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "qos data was updated , before:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " after:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "WifiProfileShare.Caster"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 33
    .line 34
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->checkAndUpdateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private updateQoSDataPoll(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentConfig()Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "WifiProfileShare.Caster"

    .line 8
    .line 9
    const-string v0, "failed to start caster, network was disconnected"

    .line 10
    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 22
    .line 23
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isAvailableToShareQoS(Landroid/net/wifi/WifiConfiguration;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 36
    .line 37
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getSharedQosInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method private updateWifiInfoAndConfig(Landroid/net/wifi/WifiInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/net/wifi/WifiInfo;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/16 p1, 0xe

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method clearUserConfirmHistory()V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mGetWhatToString:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public onFailedToBindService()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mRetryCount:I

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x1388

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mRetryCount:I

    .line 8
    .line 9
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
