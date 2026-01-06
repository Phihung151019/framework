.class public final synthetic Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/V1_2/ISehSysInputDev$initTspRawDataCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;

    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$2:I

    iput p4, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$3:I

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$2:I

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2$$ExternalSyntheticLambda10;->f$3:I

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;->$r8$lambda$VOjmhrzkH3tgS0-0nwa86WTGszo(Lcom/samsung/android/hardware/secinputdev/hal/SysinputHAL_V1_2;Ljava/util/ArrayList;IIILjava/util/ArrayList;)V

    return-void
.end method
