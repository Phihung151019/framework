.class public final enum Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
.super Ljava/lang/Enum;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/CommonServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessagingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field public static final enum AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field public static final enum NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field public static final enum RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method private static synthetic $values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 3

    .line 136
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    filled-new-array {v0, v1, v2}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 138
    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const-string v1, "RCS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    new-instance v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    const-string v1, "NON_RCS"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 136
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->$values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mValueToEnum:Landroid/util/SparseArray;

    .line 142
    invoke-static {}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 143
    .local v3, "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    .end local v3    # "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput p3, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mCode:I

    .line 148
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 4
    .param p0, "value"    # I

    .line 153
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 154
    .local v0, "entry":Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    if-eqz v0, :cond_0

    .line 155
    return-object v0

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    const-class v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 136
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 1

    .line 136
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->$VALUES:[Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->mCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 162
    const-string v0, ""

    .line 163
    .local v0, "rs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 171
    :pswitch_0
    const-string v0, "NON_RCS"

    .line 172
    goto :goto_0

    .line 168
    :pswitch_1
    const-string v0, "RCS"

    .line 169
    goto :goto_0

    .line 165
    :pswitch_2
    const-string v0, "AUTOMATIC"

    .line 166
    nop

    .line 176
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
