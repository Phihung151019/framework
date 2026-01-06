.class public Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;
    }
.end annotation


# static fields
.field public static final BODY_HEAD_ALL_ANT:I = 0x3

.field public static final BODY_HEAD_DISABLE_ANT:I = -0x1

.field public static final BODY_HEAD_WIFI_ANT:I = 0x1

.field public static final BODY_HEAD_WIFI_LTE_ANT:I = 0x2

.field public static final BODY_SAR_BACKOFF_DISABLED:I = 0x1

.field public static final BODY_SAR_BACKOFF_ENABLED:I = 0x2

.field public static final HEAD_SAR_BACKOFF_DISABLED:I = -0x1

.field public static final HEAD_SAR_BACKOFF_ENABLED:I = 0x0

.field public static final NR_MMWAVE_SAR_BACKOFF_DISABLED:I = 0x3

.field public static final NR_MMWAVE_SAR_BACKOFF_ENABLED:I = 0x4

.field public static final NR_SUB6_SAR_BACKOFF_DISABLED:I = 0x5

.field public static final NR_SUB6_SAR_BACKOFF_ENABLED:I = 0x6

.field public static final SAR_BACKOFF_DISABLE_ALL:I = 0x7

.field static final TAG:Ljava/lang/String; = "SemWifiBackOff.Sar"


# instance fields
.field public final BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

.field public final BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

.field public final BODY_SAR_SUPPORT:Z

.field public final BODY_SAR_SUPPORT_FOR_A03S:Z

.field private final BODY_SAR_SUPPORT_FOR_A066X:Z

.field private final BODY_SAR_SUPPORT_FOR_A076X:Z

.field private final BODY_SAR_SUPPORT_FOR_A16X:Z

.field public final BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

.field public final HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

.field public final HEAD_SAR_SUPPORT_FOR_GTA4XL:Z

.field public final HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

.field private final mActiveInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/Observable;

.field private final mContext:Landroid/content/Context;

.field private mIsJdmModel:Z

.field private final mLock:Ljava/lang/Object;

.field final mSarManagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/wifi/backoff/BaseSarManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemFrameworkFacade(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 2
    .line 3
    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 7
    iput-object p5, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/Observable;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/backoff/Observable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/Observable;

    .line 10
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p4, p1}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportedHeadSar(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p4, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportedHeadSar(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    .line 13
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->getBodySarType()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    .line 14
    const-string p3, ""

    .line 15
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 16
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->getSingleAntennaType()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

    .line 17
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->getSeparateAntennaType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

    .line 18
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportGta4XL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_FOR_GTA4XL:Z

    .line 19
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportA03S()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A03S:Z

    .line 20
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportA066x()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A066X:Z

    .line 21
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportA16X()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A16X:Z

    .line 22
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isSupportA076X()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A076X:Z

    .line 23
    const-string v4, "GRIP"

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 24
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-nez v1, :cond_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move p1, p2

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT:Z

    .line 25
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;->isJdmModel()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsJdmModel:Z

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->checkAndAddSarManager()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;

    invoke-direct {v4}, Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/BackOffFeatureUtil;Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;)V

    return-void
.end method

.method private checkAndAddSarManager()V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mIsJdmModel:Z

    .line 7
    .line 8
    const v2, 0x10027

    .line 9
    .line 10
    .line 11
    const-string v3, "GRIPIII"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const-string v5, "SingleBodySarManager"

    .line 15
    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "JdmProximityHeadSarManager"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v1, "JdmReceiverHeadSarManager"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT:Z

    .line 49
    .line 50
    if-eqz v1, :cond_10

    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const-string v1, "JdmTripleBodySarManager"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 73
    .line 74
    const-string v3, "GRIPII"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    const-string v1, "JdmDoubleBodySarManager"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A03S:Z

    .line 95
    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    const-string v1, "A03sSarManager"

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A066X:Z

    .line 111
    .line 112
    if-eqz v1, :cond_5

    .line 113
    .line 114
    const-string v1, "A066SarManager"

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A16X:Z

    .line 127
    .line 128
    if-eqz v1, :cond_6

    .line 129
    .line 130
    const-string v1, "A16SarManager"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_FOR_A076X:Z

    .line 143
    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    const-string v1, "A076SarManager"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 159
    .line 160
    const-string v3, "GRIP"

    .line 161
    .line 162
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_10

    .line 167
    .line 168
    invoke-virtual {v0, v5, v2, v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;II)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_BY_PROXIMITY:Z

    .line 179
    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    const-string v1, "ProximityHeadSarManager"

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_RCV_STATUS_ONLY:Z

    .line 194
    .line 195
    if-eqz v1, :cond_a

    .line 196
    .line 197
    const-string v1, "ReceiverHeadSarManager"

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iget-object v6, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT:Z

    .line 209
    .line 210
    if-eqz v1, :cond_10

    .line 211
    .line 212
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

    .line 213
    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-nez v1, :cond_b

    .line 219
    .line 220
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SINGLE_ANT_TYPE:Ljava/lang/String;

    .line 221
    .line 222
    const-string v2, " "

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    aget-object v2, v1, v4

    .line 229
    .line 230
    const-string v3, "0x"

    .line 231
    .line 232
    const-string v4, ""

    .line 233
    .line 234
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    const/16 v3, 0x10

    .line 239
    .line 240
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    const/4 v3, 0x1

    .line 245
    aget-object v1, v1, v3

    .line 246
    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-virtual {v0, v5, v2, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;II)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_c

    .line 268
    .line 269
    const-string v1, "TripleBodySarManager"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SUPPORT_TYPE:Ljava/lang/String;

    .line 282
    .line 283
    const-string v3, "GRIPI"

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_d

    .line 290
    .line 291
    const v1, 0x10018

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v5, v1, v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;II)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_d
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->HEAD_SAR_SUPPORT_FOR_GTA4XL:Z

    .line 305
    .line 306
    if-eqz v1, :cond_e

    .line 307
    .line 308
    const-string v1, "Gta4XLSarManager"

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->BODY_SAR_SEPARATE_ANT_TYPE:Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_f

    .line 327
    .line 328
    const-string v1, "DoubleBodySarManager"

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 335
    .line 336
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :cond_f
    invoke-virtual {v0, v5, v2, v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$DefaultSarManagerFactory;->createSarManager(Ljava/lang/String;II)Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    :cond_10
    return-void
.end method

.method private setClientWifiState(I)V
    .locals 2

    .line 1
    const-string v0, "setClientWifiState:"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiBackOff.Sar"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/Observable;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/backoff/Observable;->broadcastWifiState(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method broadcastBackoffState(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/Observable;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/Observable;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string v0, "Dump of SemSarManager"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, " - mIsRfTestMode: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->getRfTestModeString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, " - mCurrentBackOffMode: "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->getCurrentSarBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v1, " - .psm.info: "

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mWifiDriverNativeCommandHelper:Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->getPsmInfo()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method getActiveInterfaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method getBroadcastObservable()Lcom/samsung/android/server/wifi/backoff/Observable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mBroadcastObservable:Lcom/samsung/android/server/wifi/backoff/Observable;

    .line 2
    .line 3
    return-object p0
.end method

.method getCurrentSarBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->toInt()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->add(I)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v0
.end method

.method getRfTestModeString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getRfTestModeString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "\n"

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public getSarManagerNames()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    check-cast v3, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "["

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, "]"

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method isGripSensorMonitorEnabled()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :cond_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    check-cast v3, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 18
    .line 19
    instance-of v4, v3, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    check-cast v3, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->isGripSensorMonitorEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    return v3

    .line 32
    :cond_1
    return v1
.end method

.method setGripSensorMonitorEnabled(Z)V
    .locals 6

    .line 1
    const-string v0, "setGripSensorMonitorEnabled "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiBackOff.Sar"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    check-cast v3, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetListener(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string v5, "wifi_sensor_monitor_enable"

    .line 37
    .line 38
    invoke-virtual {v3, v4, v5, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method setListener(Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setListener(Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method start(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    check-cast v4, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->addInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 34
    .line 35
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x3

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setClientWifiState(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method stop(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    check-cast v4, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->removeInterface(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 28
    .line 29
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->setClientWifiState(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void

    .line 46
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    throw p0
.end method

.method triggerBackoffRoutine(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetBackoff(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
