.class Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScheduledPmSession"
.end annotation


# instance fields
.field duration:I

.field id:I

.field ifaceName:Ljava/lang/String;

.field interval:I

.field status:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->ifaceName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->id:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->status:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->duration:I

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl$ScheduledPmSession;->interval:I

    .line 16
    .line 17
    return-void
.end method
