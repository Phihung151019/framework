.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QosPolicyClassifierParams"
.end annotation


# instance fields
.field public dstIp:Ljava/net/InetAddress;

.field public dstPortRange:Landroid/util/Range;

.field public final hasDstIp:Z

.field public final hasSrcIp:Z

.field public isValid:Z

.field public final protocol:I

.field public srcIp:Ljava/net/InetAddress;

.field public final srcPort:I


# direct methods
.method public constructor <init>(Z[BZ[BI[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcIp:Ljava/net/InetAddress;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstIp:Ljava/net/InetAddress;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstPortRange:Landroid/util/Range;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 13
    .line 14
    iput p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcPort:I

    .line 15
    .line 16
    iput p7, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->protocol:I

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasSrcIp:Z

    .line 19
    .line 20
    const/4 p5, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcIp:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 31
    .line 32
    :cond_0
    :goto_0
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasDstIp:Z

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    :try_start_1
    invoke-static {p4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstIp:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_1
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 44
    .line 45
    :cond_1
    :goto_1
    aget p1, p6, p5

    .line 46
    .line 47
    aget p2, p6, v0

    .line 48
    .line 49
    if-le p1, p2, :cond_2

    .line 50
    .line 51
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    new-instance p1, Landroid/util/Range;

    .line 55
    .line 56
    aget p2, p6, p5

    .line 57
    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    aget p3, p6, v0

    .line 63
    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstPortRange:Landroid/util/Range;

    .line 72
    .line 73
    :goto_2
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isValid: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", hasSrcIp: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasSrcIp:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", hasDstIp: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasDstIp:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", srcIp: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcIp:Ljava/net/InetAddress;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", dstIp: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstIp:Ljava/net/InetAddress;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", dstPortRange: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstPortRange:Landroid/util/Range;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", srcPort: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcPort:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", protocol: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->protocol:I

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0
.end method
