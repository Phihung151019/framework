.class public Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/StatusbarIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttributeColour"
.end annotation


# instance fields
.field public greylist mAttribute:I

.field public greylist mColour:I


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method

.method public constructor greylist <init>(Lcom/samsung/android/knox/custom/StatusbarIconItem;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p3, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method


# virtual methods
.method public greylist getAttribute()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    return p0
.end method

.method public greylist getColour()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return p0
.end method

.method public greylist setAttributeColour(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mAttribute:I

    iput p2, p0, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->mColour:I

    return-void
.end method
