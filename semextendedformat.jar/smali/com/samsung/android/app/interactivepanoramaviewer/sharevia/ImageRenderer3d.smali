.class public Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;
.super Ljava/lang/Object;
.source "ImageRenderer3d.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final IDENTITY_MATRIX:[F

.field private static final LANDSCAPE_MODE:I = 0x0

.field private static final PORTRAIT_MODE:I = 0x1

.field private static final REVERSE_LANDSCAPE_MODE:I = 0x2

.field private static final REVERSE_PORTRAIT_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GL_Viewer3D"

.field private static prevmode:I


# instance fields
.field private Capture:I

.field private CaptureHandle:I

.field private CropH:I

.field private CropW:I

.field private ImgH:I

.field private ImgW:I

.field private PMatHandle:I

.field private PerspMatrix:[F

.field private ScreenH:I

.field private ScreenW:I

.field private TLx:I

.field private TLy:I

.field private TexCordHandle:I

.field private TextureBuffer:Ljava/nio/FloatBuffer;

.field TextureData:[F

.field private TextureHandle:[I

.field private final VertexBuffer:Ljava/nio/FloatBuffer;

.field private anglehandle:I

.field anglerot:F

.field private fragmentShader:I

.field private fragmentShaderCodeTriangle:Ljava/lang/String;

.field private grid_num:I

.field imageset:Z

.field isOffscreen:Z

.field private isRunningInTestMode:Z

.field private multiplierhandle:I

.field onCreatecalled:Z

.field private positionHandle:I

.field private shaderProgram:I

.field private sizeHandle:I

.field private sizearray:[F

.field private uvBuffer:Ljava/nio/ByteBuffer;

.field private uvhandle:I

.field vertexData:[F

.field private vertexShader:I

.field private vertexShaderCodeTriangle:Ljava/lang/String;

.field private viewportHandle:I

.field private yBuffer:Ljava/nio/ByteBuffer;

.field private yhandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    nop

    .line 25
    nop

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 24
    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIIIIIIIIIZZ)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcImgW"    # I
    .param p3, "srcImgH"    # I
    .param p4, "srcTLx"    # I
    .param p5, "srcTLy"    # I
    .param p6, "srcCropW"    # I
    .param p7, "srcCropH"    # I
    .param p8, "srcScreenW"    # I
    .param p9, "srcScreenH"    # I
    .param p10, "imageFormat"    # I
    .param p11, "capturemode"    # I
    .param p12, "isOffscreen"    # Z
    .param p13, "isFlipRequired"    # Z

    .line 84
    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v12, 0x0

    iput v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    .line 56
    const/16 v0, 0xa

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    .line 64
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglerot:F

    .line 66
    iput-boolean v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    .line 70
    iput-boolean v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    .line 285
    iput-boolean v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    .line 86
    const-string v0, "Inside constructor"

    const-string v13, "GL_Viewer3D"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    move/from16 v14, p12

    iput-boolean v14, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isOffscreen:Z

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 91
    .local v2, "input":Ljava/io/BufferedReader;
    const-string v3, "/fragmentshadernv12.glsl"

    const/4 v15, 0x1

    if-nez v10, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 95
    invoke-direct {v1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    .line 96
    move-object/from16 v16, v0

    goto :goto_0

    .line 97
    :cond_0
    if-ne v10, v15, :cond_1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 100
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 101
    invoke-direct {v1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_0

    .line 97
    :cond_1
    move-object/from16 v16, v0

    .line 105
    .end local v0    # "in":Ljava/io/InputStream;
    .local v16, "in":Ljava/io/InputStream;
    :goto_0
    if-eqz v2, :cond_2

    .line 106
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    goto :goto_2

    .line 107
    :cond_2
    :goto_1
    if-eqz v16, :cond_3

    .line 108
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_3

    .line 110
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "/vertexshader3d.glsl"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 114
    .local v3, "ins":Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v0

    .line 115
    invoke-direct {v1, v2}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->readFile(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShaderCodeTriangle:Ljava/lang/String;

    .line 117
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 118
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 119
    goto :goto_4

    :catch_1
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v0, v4

    new-array v0, v0, [F

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    .line 125
    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/lit8 v0, v0, 0xc

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v0, v4

    new-array v0, v0, [F

    iput-object v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    .line 126
    const/4 v0, 0x2

    new-array v4, v0, [I

    iput-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    .line 128
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    .line 132
    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    sget-object v5, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->IDENTITY_MATRIX:[F

    iget-object v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    array-length v6, v6

    invoke-static {v4, v12, v5, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    new-array v4, v0, [F

    iput-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    .line 134
    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    int-to-float v5, v8

    aput v5, v4, v12

    .line 135
    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    int-to-float v5, v9

    aput v5, v4, v15

    .line 137
    move/from16 v4, p9

    iput v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    .line 138
    move/from16 v5, p8

    iput v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inside constructor  H = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "Inside constructor after swap  H = "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v15, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput v11, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    .line 156
    move-object v6, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .local v6, "input":Ljava/io/BufferedReader;
    iget-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    move-object v15, v6

    .end local v6    # "input":Ljava/io/BufferedReader;
    .local v15, "input":Ljava/io/BufferedReader;
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v17, v7

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move-object/from16 v18, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .local v18, "ins":Ljava/io/InputStream;
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v2

    .line 158
    .local v2, "countVertex":I
    mul-int/lit8 v3, v2, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    .line 159
    iget-object v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexData:[F

    invoke-virtual {v3, v4, v12, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 160
    iget-object v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    iput v8, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    .line 163
    iput v9, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    .line 164
    move/from16 v3, p4

    iput v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    .line 165
    move/from16 v4, p5

    iput v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    .line 166
    move/from16 v5, p6

    iput v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    .line 167
    move/from16 v6, p7

    iput v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    .line 168
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " H = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " TLx = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " TLy = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " CropW = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " CropH = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " screen W = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " screen H = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "countTex":I
    if-eqz p13, :cond_8

    .line 177
    if-eqz v11, :cond_7

    const/4 v7, 0x2

    if-ne v11, v7, :cond_4

    move/from16 v19, v0

    move/from16 v21, v2

    goto :goto_6

    .line 179
    :cond_4
    const/4 v7, 0x1

    if-eq v11, v7, :cond_6

    const/4 v7, 0x3

    if-ne v11, v7, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v21, v2

    goto/16 :goto_7

    .line 180
    :cond_6
    :goto_5
    move v7, v2

    .end local v2    # "countVertex":I
    .local v7, "countVertex":I
    iget-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v13, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v13, v13

    iget v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v12, v12

    div-float/2addr v13, v12

    iget v12, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v12, v12

    move/from16 v19, v0

    .end local v0    # "countTex":I
    .local v19, "countTex":I
    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v0, v0

    div-float/2addr v12, v0

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    move/from16 v20, v0

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int v0, v20, v0

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v0, v0

    div-float v0, v20, v0

    move/from16 v20, v0

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    move/from16 v21, v0

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int v0, v21, v0

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v0, v0

    div-float v0, v21, v0

    move/from16 v21, v7

    .end local v7    # "countVertex":I
    .local v21, "countVertex":I
    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    move v6, v0

    move v4, v12

    move v3, v13

    move/from16 v5, v20

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v0

    .line 182
    .end local v19    # "countTex":I
    .restart local v0    # "countTex":I
    goto :goto_7

    .line 177
    .end local v21    # "countVertex":I
    .restart local v2    # "countVertex":I
    :cond_7
    move/from16 v19, v0

    move/from16 v21, v2

    .line 178
    .end local v0    # "countTex":I
    .end local v2    # "countVertex":I
    .restart local v19    # "countTex":I
    .restart local v21    # "countVertex":I
    :goto_6
    iget-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v0, v3

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v0, v4

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v0, v0

    iget v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v0, v5

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v0, v0

    iget v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v0, v6

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v0

    .line 179
    .end local v19    # "countTex":I
    .restart local v0    # "countTex":I
    goto :goto_7

    .line 183
    .end local v21    # "countVertex":I
    .restart local v2    # "countVertex":I
    :cond_8
    move/from16 v19, v0

    move/from16 v21, v2

    .end local v0    # "countTex":I
    .end local v2    # "countVertex":I
    .restart local v19    # "countTex":I
    .restart local v21    # "countVertex":I
    iget-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    int-to-float v0, v0

    iget v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v3, v3

    div-float v3, v0, v3

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v4, v4

    div-float v4, v0, v4

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLx:I

    iget v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    int-to-float v5, v5

    div-float v5, v0, v5

    iget v0, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TLy:I

    int-to-float v0, v0

    iget v6, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    int-to-float v6, v6

    div-float v6, v0, v6

    iget v7, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->calVertices([FFFFFI)I

    move-result v0

    .line 188
    .end local v19    # "countTex":I
    .restart local v0    # "countTex":I
    :goto_7
    mul-int/lit8 v2, v0, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    .line 189
    iget-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureData:[F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 190
    iget-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    .line 193
    iget v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v2, v3

    const/16 v17, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    .line 194
    return-void
.end method

.method private calVertices([FFFFFI)I
    .locals 9
    .param p1, "temp"    # [F
    .param p2, "lx"    # F
    .param p3, "ly"    # F
    .param p4, "tx"    # F
    .param p5, "ty"    # F
    .param p6, "num_div"    # I

    .line 450
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 451
    .local v2, "k":I
    sub-float v3, p4, p2

    int-to-float v4, p6

    div-float/2addr v3, v4

    .line 452
    .local v3, "difx":F
    sub-float v4, p5, p3

    int-to-float v5, p6

    div-float/2addr v4, v5

    .line 453
    .local v4, "dify":F
    move v5, p2

    .line 454
    .local v5, "tempx":F
    move v6, p3

    .line 456
    .local v6, "tempy":F
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p6, :cond_0

    .line 481
    return v2

    .line 458
    :cond_0
    add-float/2addr v6, v4

    .line 459
    const/4 v1, 0x0

    :goto_1
    if-lt v1, p6, :cond_1

    .line 479
    move v5, p2

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_1
    add-float/2addr v5, v3

    .line 464
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .local v7, "k":I
    sub-float v8, v5, v3

    aput v8, p1, v2

    .line 465
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "k":I
    .restart local v2    # "k":I
    aput v6, p1, v7

    .line 466
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .restart local v7    # "k":I
    sub-float v8, v5, v3

    aput v8, p1, v2

    .line 467
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "k":I
    .restart local v2    # "k":I
    sub-float v8, v6, v4

    aput v8, p1, v7

    .line 468
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .restart local v7    # "k":I
    aput v5, p1, v2

    .line 469
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "k":I
    .restart local v2    # "k":I
    sub-float v8, v6, v4

    aput v8, p1, v7

    .line 472
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .restart local v7    # "k":I
    sub-float v8, v5, v3

    aput v8, p1, v2

    .line 473
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "k":I
    .restart local v2    # "k":I
    aput v6, p1, v7

    .line 474
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .restart local v7    # "k":I
    aput v5, p1, v2

    .line 475
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "k":I
    .restart local v2    # "k":I
    sub-float v8, v6, v4

    aput v8, p1, v7

    .line 476
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "k":I
    .restart local v7    # "k":I
    aput v5, p1, v2

    .line 477
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "k":I
    .restart local v2    # "k":I
    aput v6, p1, v7

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private compileShader(Ljava/lang/String;I)I
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 247
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 248
    .local v0, "shaderHandle":I
    if-eqz v0, :cond_0

    .line 249
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 250
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 251
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 252
    .local v1, "compileStatus":[I
    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 253
    aget v2, v1, v3

    if-nez v2, :cond_0

    .line 254
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 255
    const/4 v0, 0x0

    .line 258
    .end local v1    # "compileStatus":[I
    :cond_0
    if-eqz v0, :cond_1

    .line 261
    return v0

    .line 259
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating shader."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createShaderProgram(II)I
    .locals 4
    .param p1, "vertexShader"    # I
    .param p2, "fragmentShader"    # I

    .line 265
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    .line 266
    .local v0, "programHandle":I
    if-eqz v0, :cond_0

    .line 267
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 268
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 269
    const-string v1, "vPos"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 270
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 272
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 273
    .local v1, "linkStatus":[I
    const v3, 0x8b82

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 274
    aget v2, v1, v2

    if-nez v2, :cond_0

    .line 275
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 276
    const/4 v0, 0x0

    .line 279
    .end local v1    # "linkStatus":[I
    :cond_0
    if-eqz v0, :cond_1

    .line 282
    return v0

    .line 280
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error creating shader program."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFile(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3
    .param p1, "bfr"    # Ljava/io/BufferedReader;

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    nop

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "str":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 204
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_1

    .line 201
    .restart local v2    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v2    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method Init_loadToGPU()V
    .locals 17

    .line 486
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inside InitLoadToGPU W = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GL_Viewer3D"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 489
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 490
    iget-object v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    aget v1, v1, v3

    const/16 v4, 0xde1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 491
    const/16 v1, 0x2801

    const/16 v5, 0x2601

    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 492
    const/16 v6, 0x2800

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 493
    nop

    .line 494
    iget v10, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    iget-object v15, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    .line 493
    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/4 v12, 0x0

    const/16 v13, 0x1909

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 496
    iget v7, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 497
    const v3, 0x84c1

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 498
    iget-object v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 499
    invoke-static {v4, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 500
    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 501
    nop

    .line 502
    iget v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    div-int/lit8 v11, v1, 0x2

    iget v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    div-int/lit8 v12, v1, 0x2

    iget-object v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    .line 501
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x190a

    const/4 v13, 0x0

    const/16 v14, 0x190a

    const/16 v15, 0x1401

    move-object/from16 v16, v1

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 503
    iget v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 504
    return-void
.end method

.method public isRunningInTestMode()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    return v0
.end method

.method loadToGPU()V
    .locals 12

    .line 509
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v2, 0xde1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 511
    nop

    .line 512
    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v7, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    iget-object v11, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    .line 511
    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 513
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 514
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureHandle:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 516
    nop

    .line 517
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    div-int/lit8 v6, v0, 0x2

    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    .line 516
    const/4 v3, 0x0

    const/16 v4, 0x190a

    const/4 v7, 0x0

    const/16 v8, 0x190a

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 518
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 519
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 433
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "----------skkv"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    monitor-enter p0

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->loadToGPU()V

    .line 438
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 440
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PMatHandle:I

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 435
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    if-eqz v0, :cond_0

    .line 444
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->grid_num:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 445
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 446
    return-void

    .line 435
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 16
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 340
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "GL_Viewer3D"

    const-string v4, "Inside surface changed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    invoke-static {v3, v3, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 343
    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v4, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    :goto_1
    int-to-float v4, v4

    .line 344
    .local v4, "cropWidthTemp":F
    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v6, v5, :cond_2

    goto :goto_2

    :cond_2
    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    goto :goto_3

    :cond_3
    :goto_2
    iget v6, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    :goto_3
    int-to-float v6, v6

    .line 345
    .local v6, "cropHeightTemp":F
    int-to-float v7, v1

    div-float/2addr v7, v4

    int-to-float v8, v2

    div-float/2addr v8, v6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    int-to-float v7, v1

    div-float/2addr v7, v4

    goto :goto_4

    :cond_4
    int-to-float v7, v2

    div-float/2addr v7, v6

    .line 346
    .local v7, "factor":F
    :goto_4
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->viewportHandle:I

    int-to-float v9, v1

    div-float/2addr v9, v7

    div-float v9, v4, v9

    int-to-float v10, v2

    div-float/2addr v10, v7

    div-float v10, v6, v10

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ">>>>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " <<>>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "skkv"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "-->"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v11, v1

    div-float/2addr v11, v7

    div-float/2addr v11, v4

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-float v11, v2

    div-float/2addr v11, v7

    div-float/2addr v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "---->"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    aget v11, v11, v3

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    const/4 v11, 0x1

    aget v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "screen width"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "screen height"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "crop width"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "crop height"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    if-eqz v8, :cond_6

    .line 360
    if-le v2, v1, :cond_5

    .line 361
    sput v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    goto :goto_5

    .line 363
    :cond_5
    sput v11, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    .line 365
    :goto_5
    iput-boolean v3, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    .line 368
    :cond_6
    if-le v1, v2, :cond_7

    move v3, v11

    .line 369
    .local v3, "currmode":I
    :cond_7
    sget v8, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    if-eq v8, v3, :cond_8

    .line 371
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    .line 372
    .local v8, "temp":I
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    iput v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    .line 373
    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    .line 374
    .end local v8    # "temp":I
    goto :goto_6

    .line 377
    :cond_8
    const-string v8, "mode"

    const-string v9, "equal"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_6
    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    if-eqz v8, :cond_9

    .line 382
    iput v2, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    .line 383
    iput v1, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    .line 384
    const/16 v8, 0x500

    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropW:I

    .line 385
    const/16 v8, 0x2d0

    iput v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CropH:I

    .line 389
    :cond_9
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenW:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "view width"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ScreenH:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "view height"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-boolean v8, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isOffscreen:Z

    if-eqz v8, :cond_a

    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_7

    :cond_a
    const/high16 v8, 0x3f800000    # 1.0f

    .line 393
    .local v8, "multiplier":F
    :goto_7
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->multiplierhandle:I

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 395
    sput v3, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->prevmode:I

    .line 396
    const/high16 v10, -0x3d4c0000    # -90.0f

    const/4 v12, 0x3

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    const-string v15, "onSurfaceChanged"

    if-le v1, v2, :cond_f

    .line 397
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-nez v9, :cond_b

    .line 398
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 399
    const-string v5, "1"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    goto/16 :goto_a

    :cond_b
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v9, v5, :cond_c

    .line 401
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 402
    const-string v5, "2"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    goto :goto_a

    :cond_c
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v11, :cond_d

    .line 404
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 405
    const-string v5, "3"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 406
    :cond_d
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v12, :cond_e

    .line 407
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 408
    const-string v5, "4"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    goto :goto_a

    .line 406
    :cond_e
    :goto_8
    goto :goto_a

    .line 412
    :cond_f
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-nez v9, :cond_10

    .line 413
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 414
    const-string v5, "5"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    goto :goto_a

    :cond_10
    iget v9, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v9, v5, :cond_11

    .line 416
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v13}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 417
    const-string v5, "6"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    goto :goto_a

    :cond_11
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v11, :cond_12

    .line 419
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 420
    const-string v5, "7"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 421
    :cond_12
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Capture:I

    if-ne v5, v12, :cond_13

    .line 422
    iget v5, v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-static {v5, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 423
    const-string v5, "8"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 421
    :cond_13
    :goto_9
    nop

    .line 428
    :goto_a
    invoke-virtual {v0}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->Init_loadToGPU()V

    .line 430
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->onCreatecalled:Z

    .line 289
    const-string v1, "GL_Viewer3D"

    const-string v2, "Inside surface created"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 292
    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    if-eqz v3, :cond_0

    .line 293
    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 294
    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 295
    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShaderCodeTriangle:Ljava/lang/String;

    .line 299
    .local v3, "vCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShaderCodeTriangle:Ljava/lang/String;

    .line 301
    .local v4, "fCode":Ljava/lang/String;
    const v5, 0x8b31

    invoke-direct {p0, v3, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->compileShader(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    .line 302
    const v5, 0x8b30

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->compileShader(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    .line 303
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->vertexShader:I

    iget v6, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->fragmentShader:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->createShaderProgram(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    .line 304
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 306
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "a_position"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    .line 307
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "a_texCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    .line 308
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "s_PMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PMatHandle:I

    .line 309
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "y_texture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yhandle:I

    .line 310
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "uv_texture"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvhandle:I

    .line 311
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "size"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizeHandle:I

    .line 312
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "viewportSize"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->viewportHandle:I

    .line 313
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "captureFlag"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->CaptureHandle:I

    .line 314
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "anglerot"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->anglehandle:I

    .line 315
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->shaderProgram:I

    const-string v6, "multiplier"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->multiplierhandle:I

    .line 317
    const/16 v5, 0xb71

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 318
    invoke-static {v1, v1, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 325
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 326
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->positionHandle:I

    .line 327
    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->VertexBuffer:Ljava/nio/FloatBuffer;

    .line 326
    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 329
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 330
    iget v5, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TexCordHandle:I

    .line 331
    iget-object v10, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->TextureBuffer:Ljava/nio/FloatBuffer;

    .line 330
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 334
    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizeHandle:I

    iget-object v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->sizearray:[F

    const/4 v5, 0x0

    invoke-static {v1, v0, v2, v5}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 335
    return-void
.end method

.method public setImage([B)V
    .locals 5
    .param p1, "srcYUVImg"    # [B

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    const-string v0, "GL_Viewer3D"

    const-string v1, "Inside setImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    .line 234
    monitor-exit p0

    .line 244
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImage([B[F)V
    .locals 5
    .param p1, "srcYUVImg"    # [B
    .param p2, "PMat"    # [F

    .line 210
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    monitor-enter p0

    .line 216
    :try_start_0
    const-string v0, "GL_Viewer3D"

    const-string v1, "Inside setImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v2, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->yBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgW:I

    iget v4, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->ImgH:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->uvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->imageset:Z

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    iget-object v1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->PerspMatrix:[F

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    monitor-exit p0

    .line 231
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 211
    :cond_1
    :goto_0
    const-string v0, "GL_Viewer3D"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In SetImage: YUVimg or Pmat is NULL"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public setRunningInTestMode(Z)V
    .locals 0
    .param p1, "isRunningInTestMode"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/ImageRenderer3d;->isRunningInTestMode:Z

    .line 78
    return-void
.end method
