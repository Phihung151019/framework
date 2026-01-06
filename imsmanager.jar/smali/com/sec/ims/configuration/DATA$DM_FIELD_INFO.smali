.class public Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
.super Ljava/lang/Object;
.source "DATA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/configuration/DATA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DM_FIELD_INFO"
.end annotation


# instance fields
.field private final mIndex:I

.field private mName:Ljava/lang/String;

.field private final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mIndex:I

    .line 42
    iput p2, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mType:I

    if-nez p2, :cond_0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "./3GPP_IMS/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    return-void

    .line 46
    :cond_0
    iput-object p3, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 63
    iget p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mIndex:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "omadm/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->mType:I

    return p0
.end method
