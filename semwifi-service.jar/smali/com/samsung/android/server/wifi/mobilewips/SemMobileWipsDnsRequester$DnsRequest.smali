.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsRequest"
.end annotation


# instance fields
.field private isUDP:Z

.field private mDnsMessage:[B

.field private mDstAddr:[B

.field private mDstMac:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mResponse:[B

.field private mSrcAddr:[B

.field private mTimeoutMillis:[J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;Landroid/net/LinkProperties;[J[B[BLjava/lang/String;[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mLinkProperties:Landroid/net/LinkProperties;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mTimeoutMillis:[J

    .line 9
    .line 10
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [B

    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mSrcAddr:[B

    .line 17
    .line 18
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [B

    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstAddr:[B

    .line 25
    .line 26
    iput-object p6, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstMac:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDnsMessage:[B

    .line 29
    .line 30
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->isUDP:Z

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mResponse:[B

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public getResponse()[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mResponse:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public run()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mLinkProperties:Landroid/net/LinkProperties;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mSrcAddr:[B

    .line 13
    .line 14
    iget-object v4, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstAddr:[B

    .line 15
    .line 16
    iget-object v5, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstMac:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDnsMessage:[B

    .line 19
    .line 20
    iget-object v7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mTimeoutMillis:[J

    .line 21
    .line 22
    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->isUDP:Z

    .line 23
    .line 24
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDns(Landroid/net/LinkProperties;[B[BLjava/lang/String;[B[JZ)[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mResponse:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    :catch_0
    return-void
.end method
