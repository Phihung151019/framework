.class public Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private bigdataStartTime:Ljava/time/LocalDateTime;

.field private bigdataState:I

.field private deadline1:Ljava/time/LocalDateTime;

.field private deadline2:Ljava/time/LocalDateTime;

.field private routerInfo:Ljava/lang/String;

.field private ssidBigdata:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->ssidBigdata:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataState:I

    .line 13
    .line 14
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataStartTime:Ljava/time/LocalDateTime;

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    iput-object v0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->routerInfo:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getBigdataStartTime()Ljava/time/LocalDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataStartTime:Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBigdataState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataState:I

    .line 2
    .line 3
    return p0
.end method

.method public getDeadline1()Ljava/time/LocalDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->deadline1:Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDeadline2()Ljava/time/LocalDateTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->deadline2:Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-object p0
.end method

.method public getRouterInfo()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->routerInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSsidBigdata()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->ssidBigdata:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBigdataStartTime(Ljava/time/LocalDateTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataStartTime:Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-void
.end method

.method public setBigdataState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataState:I

    .line 2
    .line 3
    return-void
.end method

.method public setDeadline1(Ljava/time/LocalDateTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->deadline1:Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-void
.end method

.method public setDeadline2(Ljava/time/LocalDateTime;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->deadline2:Ljava/time/LocalDateTime;

    .line 2
    .line 3
    return-void
.end method

.method public setRouterInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->routerInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSsidBigdata(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->ssidBigdata:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConnectionBigdata{bigdataState="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataState:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", ssidBigdata="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->ssidBigdata:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", routerInfo=\'"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->routerInfo:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\', bigdataStartTime="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->bigdataStartTime:Ljava/time/LocalDateTime;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", deadline1="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->deadline1:Ljava/time/LocalDateTime;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", deadline2="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/connection/ConnectionBigdata;->deadline2:Ljava/time/LocalDateTime;

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const/16 p0, 0x7d

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
