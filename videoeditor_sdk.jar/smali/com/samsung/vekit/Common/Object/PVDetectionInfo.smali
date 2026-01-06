.class public Lcom/samsung/vekit/Common/Object/PVDetectionInfo;
.super Ljava/lang/Object;
.source "PVDetectionInfo.java"


# instance fields
.field angles:I

.field bottom:I

.field id:I

.field left:I

.field objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

.field right:I

.field top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    .line 26
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    .line 27
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    .line 28
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    .line 29
    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    .line 31
    sget-object v0, Lcom/samsung/vekit/Common/Type/PVObjectType;->FACE:Lcom/samsung/vekit/Common/Type/PVObjectType;

    iput-object v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 32
    return-void
.end method

.method public constructor <init>(IIIIIILcom/samsung/vekit/Common/Type/PVObjectType;)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "angles"    # I
    .param p6, "id"    # I
    .param p7, "objectType"    # Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    .line 16
    iput p2, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    .line 17
    iput p3, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    .line 18
    iput p4, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    .line 19
    iput p5, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    .line 20
    iput p6, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    .line 21
    iput-object p7, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 22
    return-void
.end method


# virtual methods
.method public getAngles()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    return v0
.end method

.method public getBottom()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    return v0
.end method

.method public getObjectType()Lcom/samsung/vekit/Common/Type/PVObjectType;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    return-object v0
.end method

.method public getRight()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    return v0
.end method

.method public setAngles(I)V
    .locals 0
    .param p1, "angles"    # I

    .line 39
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->angles:I

    .line 40
    return-void
.end method

.method public setBottom(I)V
    .locals 0
    .param p1, "bottom"    # I

    .line 87
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->bottom:I

    .line 88
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 47
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->id:I

    .line 48
    return-void
.end method

.method public setLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .line 63
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->left:I

    .line 64
    return-void
.end method

.method public setObjectType(Lcom/samsung/vekit/Common/Type/PVObjectType;)V
    .locals 0
    .param p1, "objectType"    # Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 55
    iput-object p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->objectType:Lcom/samsung/vekit/Common/Type/PVObjectType;

    .line 56
    return-void
.end method

.method public setRight(I)V
    .locals 0
    .param p1, "right"    # I

    .line 79
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->right:I

    .line 80
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .param p1, "top"    # I

    .line 71
    iput p1, p0, Lcom/samsung/vekit/Common/Object/PVDetectionInfo;->top:I

    .line 72
    return-void
.end method
