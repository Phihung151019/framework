.class public Lcom/samsung/uwb/support/uci/ntf/RangeDataNotification;
.super Lcom/samsung/uwb/support/uci/UciPacket;
.source "RangeDataNotification.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RANGE_DATA_NTF"


# instance fields
.field public final rangingData:Lcom/samsung/uwb/support/data/ranging/RangingData;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "uci"    # [B

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>([B)V

    .line 14
    new-instance v0, Lcom/samsung/uwb/support/data/ranging/RangingData;

    invoke-super {p0}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/uwb/support/data/ranging/RangingData;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/uwb/support/uci/ntf/RangeDataNotification;->rangingData:Lcom/samsung/uwb/support/data/ranging/RangingData;

    .line 15
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 20
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, "RANGE_DATA_NTF"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 21
    iget-object v1, p0, Lcom/samsung/uwb/support/uci/ntf/RangeDataNotification;->rangingData:Lcom/samsung/uwb/support/data/ranging/RangingData;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 22
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
