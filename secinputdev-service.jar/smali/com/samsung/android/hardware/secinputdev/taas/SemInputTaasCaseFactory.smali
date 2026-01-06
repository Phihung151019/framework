.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasCaseFactory;
.super Ljava/lang/Object;
.source "SemInputTaasCaseFactory.java"


# static fields
.field public static final TAAS_CASEA:Ljava/lang/String; = "CASA"

.field public static final TAAS_CASEB:Ljava/lang/String; = "CASB"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    const-string v0, "CASB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    const-string v0, "CASA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 14
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseDefault;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseDefault;-><init>()V

    return-object v0

    .line 12
    :pswitch_2
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseB;-><init>()V

    return-object v0

    .line 10
    :pswitch_3
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1f732c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
