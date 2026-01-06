.class public final synthetic Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

.field public final synthetic f$1:[Ljava/io/File;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;[Ljava/io/File;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$1:[Ljava/io/File;

    .line 6
    .line 7
    iput p3, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$2:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$1:[Ljava/io/File;

    .line 9
    .line 10
    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$2:I

    .line 11
    .line 12
    add-int/lit8 p0, p0, 0x1

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trainHelper([Ljava/io/File;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$1:[Ljava/io/File;

    .line 21
    .line 22
    iget p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;->f$2:I

    .line 23
    .line 24
    add-int/lit8 p0, p0, 0x1

    .line 25
    .line 26
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trainHelper([Ljava/io/File;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
