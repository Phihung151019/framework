.class public Lcom/sec/ims/cmc/CmcDialog$Builder;
.super Ljava/lang/Object;
.source "CmcDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallSlot:I

.field private mCallType:I

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mDialogId:Ljava/lang/String;

.field private mIsHeld:Z

.field private mIsPullable:Z

.field private mNumberPresentation:I

.field private mPeerUri:Ljava/lang/String;

.field private mState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallSlot(Lcom/sec/ims/cmc/CmcDialog$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCallSlot:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallType(Lcom/sec/ims/cmc/CmcDialog$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCallType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCnapName(Lcom/sec/ims/cmc/CmcDialog$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCnapNamePresentation(Lcom/sec/ims/cmc/CmcDialog$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCnapNamePresentation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialogId(Lcom/sec/ims/cmc/CmcDialog$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mDialogId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHeld(Lcom/sec/ims/cmc/CmcDialog$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mIsHeld:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPullable(Lcom/sec/ims/cmc/CmcDialog$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mIsPullable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumberPresentation(Lcom/sec/ims/cmc/CmcDialog$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mNumberPresentation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeerUri(Lcom/sec/ims/cmc/CmcDialog$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mPeerUri:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/sec/ims/cmc/CmcDialog$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mState:I

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mDialogId:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mPeerUri:Ljava/lang/String;

    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mIsPullable:Z

    const/4 v2, 0x2

    .line 207
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mState:I

    .line 208
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCallType:I

    const/4 v2, 0x0

    .line 209
    iput-boolean v2, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mIsHeld:Z

    .line 210
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCnapName:Ljava/lang/String;

    .line 211
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCnapNamePresentation:I

    .line 212
    iput v1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mNumberPresentation:I

    .line 213
    iput v2, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCallSlot:I

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/cmc/CmcDialog;
    .locals 1

    .line 216
    new-instance v0, Lcom/sec/ims/cmc/CmcDialog;

    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/CmcDialog;-><init>(Lcom/sec/ims/cmc/CmcDialog$Builder;)V

    return-object v0
.end method

.method public setCallSlot(I)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 265
    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCallSlot:I

    return-object p0
.end method

.method public setCallType(I)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 240
    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCallType:I

    return-object p0
.end method

.method public setCnapName(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method public setCnapNamePresentation(I)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 255
    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mCnapNamePresentation:I

    return-object p0
.end method

.method public setDialogId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mDialogId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsHeld(Z)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mIsHeld:Z

    return-object p0
.end method

.method public setIsPullable(Z)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mIsPullable:Z

    return-object p0
.end method

.method public setNumberPresentation(I)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 260
    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mNumberPresentation:I

    return-object p0
.end method

.method public setPeerUri(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mPeerUri:Ljava/lang/String;

    return-object p0
.end method

.method public setState(I)Lcom/sec/ims/cmc/CmcDialog$Builder;
    .locals 0

    .line 235
    iput p1, p0, Lcom/sec/ims/cmc/CmcDialog$Builder;->mState:I

    return-object p0
.end method
