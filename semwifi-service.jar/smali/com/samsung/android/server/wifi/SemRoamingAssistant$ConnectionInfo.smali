.class Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemRoamingAssistant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionInfo"
.end annotation


# instance fields
.field private cachedFrequency:I

.field private lastUpdatedTime:J

.field private final networkKey:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcachedFrequency(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->cachedFrequency:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastUpdatedTime(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->lastUpdatedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkKey(Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->networkKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->networkKey:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public backup(IJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->cachedFrequency:I

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$ConnectionInfo;->lastUpdatedTime:J

    .line 4
    .line 5
    return-void
.end method
