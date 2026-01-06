.class public Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;
.super Ljava/lang/Object;
.source "RangingReportMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/oemextension/RangingReportMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRawNtfData:[B

.field private mSessionId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    .locals 5

    .line 122
    new-instance v0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    iget-wide v1, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->mSessionId:J

    iget-object v3, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->mRawNtfData:[B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;-><init>(J[BLcom/google/uwb/support/oemextension/RangingReportMetadata$1;)V

    return-object v0
.end method

.method public setRawNtfData([B)Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;
    .locals 0
    .param p1, "rawNtfData"    # [B

    .line 117
    iput-object p1, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->mRawNtfData:[B

    .line 118
    return-object p0
.end method

.method public setSessionId(J)Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;
    .locals 0
    .param p1, "sessionId"    # J

    .line 112
    iput-wide p1, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->mSessionId:J

    .line 113
    return-object p0
.end method
