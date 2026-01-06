.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AbnormalAP"
.end annotation


# instance fields
.field private cnt:I

.field private latestTimestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->cnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlatestTimestamp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->latestTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputcnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->cnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlatestTimestamp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->latestTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
