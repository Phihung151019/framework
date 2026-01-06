.class public Lcom/samsung/uwb/support/data/param/capsinfo/DtAnchorMaxActiveRr;
.super Lcom/samsung/uwb/support/data/param/TlvParam;
.source "DtAnchorMaxActiveRr.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DT_ANCHOR_MAX_ACTIVE_RR"


# instance fields
.field private final maxNumActiveRr:I


# direct methods
.method public constructor <init>(BI[B)V
    .locals 2
    .param p1, "tag"    # B
    .param p2, "length"    # I
    .param p3, "payload"    # [B

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/uwb/support/data/param/TlvParam;-><init>(BI[B)V

    .line 16
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DtAnchorMaxActiveRr;->maxNumActiveRr:I

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 22
    iget v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DtAnchorMaxActiveRr;->maxNumActiveRr:I

    const-string v1, "DT_ANCHOR_MAX_ACTIVE_RR"

    if-nez v0, :cond_0

    .line 23
    const-string v0, " Not support device role DT-Anchor "

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    iget v0, p0, Lcom/samsung/uwb/support/data/param/capsinfo/DtAnchorMaxActiveRr;->maxNumActiveRr:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, " Support max number of active ranging rounds: %d "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/samsung/uwb/support/data/param/TlvParam;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
