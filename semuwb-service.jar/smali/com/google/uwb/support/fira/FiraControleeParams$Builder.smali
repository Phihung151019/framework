.class public Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
.super Ljava/lang/Object;
.source "FiraControleeParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/uwb/support/fira/FiraControleeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAction:I

.field private mAddressList:[Landroid/uwb/UwbAddress;

.field private mSubSessionIdList:[I

.field private mSubSessionKeyList:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAction:I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    .line 174
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    .line 175
    iput-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionKeyList:[B

    return-void
.end method

.method private checkAddressList()V
    .locals 8

    .line 199
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 200
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v3, v0

    move v4, v2

    :goto_1
    const/4 v5, 0x2

    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    .line 201
    .local v6, "uwbAddress":Landroid/uwb/UwbAddress;
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v6}, Landroid/uwb/UwbAddress;->size()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 200
    .end local v6    # "uwbAddress":Landroid/uwb/UwbAddress;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    array-length v0, v0

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    array-length v3, v3

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 211
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionKeyList:[B

    if-eqz v0, :cond_8

    .line 212
    iget v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAction:I

    if-ne v0, v5, :cond_6

    .line 213
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionKeyList:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x10

    if-ne v0, v3, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_7

    .line 215
    :cond_6
    iget v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAction:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_8

    .line 216
    iget-object v0, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionKeyList:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    if-ne v0, v3, :cond_7

    goto :goto_6

    :cond_7
    move v1, v2

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 220
    :cond_8
    :goto_7
    return-void
.end method


# virtual methods
.method public build()Lcom/google/uwb/support/fira/FiraControleeParams;
    .locals 6

    .line 223
    invoke-direct {p0}, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->checkAddressList()V

    .line 224
    new-instance v0, Lcom/google/uwb/support/fira/FiraControleeParams;

    iget v1, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAction:I

    iget-object v2, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    iget-object v3, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    iget-object v4, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionKeyList:[B

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/uwb/support/fira/FiraControleeParams;-><init>(I[Landroid/uwb/UwbAddress;[I[BLcom/google/uwb/support/fira/FiraControleeParams$1;)V

    return-object v0
.end method

.method public setAction(I)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
    .locals 0
    .param p1, "action"    # I

    .line 178
    iput p1, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAction:I

    .line 179
    return-object p0
.end method

.method public setAddressList([Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
    .locals 0
    .param p1, "addressList"    # [Landroid/uwb/UwbAddress;

    .line 183
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mAddressList:[Landroid/uwb/UwbAddress;

    .line 184
    return-object p0
.end method

.method public setSubSessionIdList([I)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
    .locals 0
    .param p1, "subSessionIdList"    # [I

    .line 188
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionIdList:[I

    .line 189
    return-object p0
.end method

.method public setSubSessionKeyList([B)Lcom/google/uwb/support/fira/FiraControleeParams$Builder;
    .locals 0
    .param p1, "subSessionKeyList"    # [B

    .line 194
    iput-object p1, p0, Lcom/google/uwb/support/fira/FiraControleeParams$Builder;->mSubSessionKeyList:[B

    .line 195
    return-object p0
.end method
