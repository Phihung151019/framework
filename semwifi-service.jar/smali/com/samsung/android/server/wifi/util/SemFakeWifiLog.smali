.class public Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/SemWifiLog;


# static fields
.field private static final sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method public tC(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public trace(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 2
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .locals 0

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    .line 2
    .line 3
    return-object p0
.end method
