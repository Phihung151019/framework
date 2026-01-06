.class public Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist allowReshape:Z

.field public greylist compUnit:I

.field public greylist cpuThreadCount:I

.field public greylist dataShared:Landroid/os/SharedMemory;

.field public greylist execType:I

.field public greylist fd:Ljava/io/FileDescriptor;

.field public greylist fd_StartOffSet:J

.field public greylist flag:I

.field public greylist inputNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist input_shape:[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

.field public greylist mType:I

.field public greylist mode:I

.field public greylist modelInputType:I

.field public greylist model_buffer_len:I

.field public greylist model_buffer_ptr:[B

.field public greylist model_file:Ljava/lang/String;

.field public greylist model_name:Ljava/lang/String;

.field public greylist model_package_buffer_len:I

.field public greylist model_package_buffer_ptr:[B

.field public greylist outputNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public greylist weights_file:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getDataShared()Landroid/os/SharedMemory;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    return-object p0
.end method

.method public greylist getExecType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    return p0
.end method

.method public greylist getFd()Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method public greylist getInputNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public greylist getModelBufferLen()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_len:I

    return p0
.end method

.method public greylist getModelBufferPtr()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_ptr:[B

    return-object p0
.end method

.method public greylist getModelFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getModelInputType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    return p0
.end method

.method public greylist getModelName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_name:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getModelPackageBufferLen()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    return p0
.end method

.method public greylist getModelPackageBufferPtr()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    return-object p0
.end method

.method public greylist getOutputNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public greylist getStartOffSet()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    return-wide v0
.end method

.method public greylist getWeightsFile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    return-object p0
.end method

.method public final greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    if-lez v0, :cond_3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const-class v0, Landroid/os/SharedMemory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/SharedMemory;

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    :cond_3
    return-void
.end method

.method public greylist setCompUnit(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    return-void
.end method

.method public greylist setDataShared(Landroid/os/SharedMemory;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    return-void
.end method

.method public greylist setExecType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    return-void
.end method

.method public greylist setFd(Ljava/io/FileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public greylist setInputNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    return-void
.end method

.method public greylist setModelBufferLen(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_len:I

    return-void
.end method

.method public greylist setModelBufferPtr([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_buffer_ptr:[B

    return-void
.end method

.method public greylist setModelFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    return-void
.end method

.method public greylist setModelInputType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    return-void
.end method

.method public greylist setModelName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_name:Ljava/lang/String;

    return-void
.end method

.method public greylist setModelPackageBufferLen(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    return-void
.end method

.method public greylist setModelPackageBufferPtr([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    return-void
.end method

.method public greylist setOutputNames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    return-void
.end method

.method public greylist setStartOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    return-void
.end method

.method public greylist setWeightsFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    return-void
.end method

.method public greylist setmType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mdl["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], fl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->execType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->compUnit:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->inputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->outputNames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_file:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->modelInputType:I

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->weights_file:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd_StartOffSet:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_len:I

    if-lez p2, :cond_4

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->model_package_buffer_ptr:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;->dataShared:Landroid/os/SharedMemory;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_4
    return-void
.end method
