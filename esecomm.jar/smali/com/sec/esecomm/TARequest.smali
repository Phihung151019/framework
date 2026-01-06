.class public Lcom/sec/esecomm/TARequest;
.super Lcom/sec/esecomm/TACommand;
.source "TARequest.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "TARequest"


# direct methods
.method public constructor blacklist <init>(IIII[B)V
    .locals 0
    .param p1, "cmdId"    # I
    .param p2, "magicNum"    # I
    .param p3, "version"    # I
    .param p4, "len"    # I
    .param p5, "data"    # [B

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/sec/esecomm/TACommand;-><init>(IIII[B)V

    .line 22
    return-void
.end method
