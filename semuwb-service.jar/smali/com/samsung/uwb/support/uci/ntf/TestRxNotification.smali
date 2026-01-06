.class public Lcom/samsung/uwb/support/uci/ntf/TestRxNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "TestRxNotification.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TEST_RX_NTF"


# instance fields
.field public final testRxData:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 12
    new-instance v0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/uwb/support/uci/ntf/TestRxNotification;->testRxData:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    .line 13
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    const-string v0, "TEST_RX_NTF"

    iget-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/TestRxNotification;->testRxData:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "log":Ljava/lang/String;
    return-object v0
.end method
