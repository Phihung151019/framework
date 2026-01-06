.class public Lcom/samsung/uwb/support/data/param/InvalidTlvParam;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "InvalidTlvParam.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "INVALID_PARAM"


# direct methods
.method public constructor <init>(BBI[B)V
    .locals 0
    .param p1, "extTag"    # B
    .param p2, "subId"    # B
    .param p3, "length"    # I
    .param p4, "payload"    # [B

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BBI[B)V

    .line 14
    return-void
.end method

.method public constructor <init>(BI[B)V
    .locals 0
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/samsung/uwb/support/data/param/InvalidTlvParam;->tag:[B

    .line 19
    invoke-static {v0}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/uwb/support/data/param/InvalidTlvParam;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/param/InvalidTlvParam;->payload:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INVALID_PARAM"

    filled-new-array {v0, v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 18
    const-string v1, "Tag: 0x%s,  %s,  length: %d, Value: 0x%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
