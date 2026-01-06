.class Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ExposureToLuxMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DebugCircularArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "cap"    # I

    .line 1106
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    .line 1108
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mSize:I

    .line 1109
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1112
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mSize:I

    if-lt v0, v1, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1122
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1118
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
