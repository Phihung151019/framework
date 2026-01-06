.class Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionData"
.end annotation


# instance fields
.field private configKey:Ljava/lang/String;

.field private isForcedConnectionByUser:Z

.field private networkId:I

.field private requestingPackageName:Ljava/lang/String;

.field private rssi:I

.field private sessionEndTimeMillis:J

.field private sessionStartTimeMillis:J

.field private ssid:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetconfigKey(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->configKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisForcedConnectionByUser(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->isForcedConnectionByUser:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnetworkId(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->networkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestingPackageName(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->requestingPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrssi(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->rssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsessionEndTimeMillis(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->sessionEndTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetsessionStartTimeMillis(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->sessionStartTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetssid(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->ssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputsessionEndTimeMillis(Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->sessionEndTimeMillis:J

    .line 2
    .line 3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->ssid:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->sessionStartTimeMillis:J

    .line 7
    .line 8
    iput p4, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->networkId:I

    .line 9
    .line 10
    iput p5, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->rssi:I

    .line 11
    .line 12
    iput-boolean p6, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->isForcedConnectionByUser:Z

    .line 13
    .line 14
    iput-object p7, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->configKey:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$SessionData;->requestingPackageName:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method
