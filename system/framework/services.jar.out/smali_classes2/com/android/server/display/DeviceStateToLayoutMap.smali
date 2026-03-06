.class Lcom/android/server/display/DeviceStateToLayoutMap;
.super Ljava/lang/Object;
.source "DeviceStateToLayoutMap.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONFIG_FILE_PATH:Ljava/lang/String; = "etc/displayconfig/display_layout_configuration.xml"

.field private static final DATA_CONFIG_FILE_PATH:Ljava/lang/String; = "system/displayconfig/display_layout_configuration.xml"

.field private static final FRONT_STRING:Ljava/lang/String; = "front"

.field private static final POSITION_FRONT:I = 0x0

.field private static final POSITION_REAR:I = 0x1

.field private static final POSITION_UNKNOWN:I = -0x1

.field private static final REAR_STRING:Ljava/lang/String; = "rear"

.field public static final STATE_DEFAULT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DeviceStateToLayoutMap"


# instance fields
.field private final mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

.field private final mIsPortInDisplayLayoutEnabled:Z

.field private final mLayoutMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/layout/Layout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1
    .param p1, "idProducer"    # Lcom/android/server/display/layout/DisplayIdProducer;
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 75
    invoke-static {}, Lcom/android/server/display/DeviceStateToLayoutMap;->getConfigFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/io/File;)V

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/layout/DisplayIdProducer;Lcom/android/server/display/feature/DisplayManagerFlags;Ljava/io/File;)V
    .locals 1
    .param p1, "idProducer"    # Lcom/android/server/display/layout/DisplayIdProducer;
    .param p2, "flags"    # Lcom/android/server/display/feature/DisplayManagerFlags;
    .param p3, "configFile"    # Ljava/io/File;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {p2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPortInDisplayLayoutEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    .line 81
    iput-object p1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 82
    invoke-virtual {p0, p3}, Lcom/android/server/display/DeviceStateToLayoutMap;->loadLayoutsFromConfig(Ljava/io/File;)V

    .line 83
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    .line 84
    return-void
.end method

.method private createLayout(I)Lcom/android/server/display/layout/Layout;
    .locals 2
    .param p1, "state"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to create a second layout for state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStateToLayoutMap"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 199
    :cond_0
    new-instance v0, Lcom/android/server/display/layout/Layout;

    invoke-direct {v0}, Lcom/android/server/display/layout/Layout;-><init>()V

    .line 200
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 201
    return-object v0
.end method

.method private static getConfigFile()Ljava/io/File;
    .locals 3

    .line 87
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/displayconfig/display_layout_configuration.xml"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "configFileFromDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    return-object v0

    .line 92
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/displayconfig/display_layout_configuration.xml"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;
    .locals 4
    .param p1, "display"    # Lcom/android/server/display/config/layout/Display;

    .line 171
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getAddress_optional()Ljava/math/BigInteger;

    move-result-object v0

    .line 172
    .local v0, "xmlAddress":Ljava/math/BigInteger;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    return-object v1

    .line 175
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getPort_optional()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p1}, Lcom/android/server/display/config/layout/Display;->getPort_optional()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPortAndModel(ILjava/lang/Long;)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    return-object v1

    .line 176
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must specify a display identifier in display layout configuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPosition(Ljava/lang/String;)I
    .locals 2
    .param p1, "position"    # Ljava/lang/String;

    .line 184
    const/4 v0, -0x1

    .line 185
    .local v0, "positionInt":I
    const-string v1, "front"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_0
    const-string/jumbo v1, "rear"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v0, 0x1

    .line 190
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 97
    const-string v0, "DeviceStateToLayoutMap:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v0, "-----------------------"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsPortInDisplayLayoutEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mIsPortInDisplayLayoutEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "Registered Layouts:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 106
    .end local v0    # "i":I
    return-void
.end method

.method get(I)Lcom/android/server/display/layout/Layout;
    .locals 3
    .param p1, "state"    # I

    .line 109
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/layout/Layout;

    .line 110
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/display/layout/Layout;

    .line 113
    :cond_0
    return-object v0
.end method

.method loadLayoutsFromConfig(Ljava/io/File;)V
    .locals 23
    .param p1, "configFile"    # Ljava/io/File;

    .line 125
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading display layouts from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DeviceStateToLayoutMap"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 131
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Lcom/android/server/display/config/layout/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/layout/Layouts;

    move-result-object v0

    .line 132
    .local v0, "layouts":Lcom/android/server/display/config/layout/Layouts;
    if-nez v0, :cond_1

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display layout config not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    return-void

    .line 163
    .end local v0    # "layouts":Lcom/android/server/display/config/layout/Layouts;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 130
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto/16 :goto_3

    .line 136
    .restart local v0    # "layouts":Lcom/android/server/display/config/layout/Layouts;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/display/config/layout/Layouts;->getLayout()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/layout/Layout;

    .line 137
    .local v6, "l":Lcom/android/server/display/config/layout/Layout;
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Layout;->getState()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 138
    .local v7, "state":I
    invoke-direct {v1, v7}, Lcom/android/server/display/DeviceStateToLayoutMap;->createLayout(I)Lcom/android/server/display/layout/Layout;

    move-result-object v8

    move-object v9, v8

    .line 139
    .local v9, "layout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {v6}, Lcom/android/server/display/config/layout/Layout;->getDisplay()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/config/layout/Display;

    .line 140
    .local v10, "d":Lcom/android/server/display/config/layout/Display;
    nop

    .line 141
    invoke-direct {v1, v10}, Lcom/android/server/display/DeviceStateToLayoutMap;->getDisplayAddressForLayoutDisplay(Lcom/android/server/display/config/layout/Display;)Landroid/view/DisplayAddress;

    move-result-object v11

    .line 143
    .local v11, "address":Landroid/view/DisplayAddress;
    invoke-virtual {v10}, Lcom/android/server/display/config/layout/Display;->getPosition()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/android/server/display/DeviceStateToLayoutMap;->getPosition(Ljava/lang/String;)I

    move-result v15

    .line 144
    .local v15, "position":I
    invoke-virtual {v10}, Lcom/android/server/display/config/layout/Display;->getLeadDisplayAddress()Ljava/math/BigInteger;

    move-result-object v12

    move-object/from16 v21, v12

    .line 145
    .local v21, "leadDisplayPhysicalId":Ljava/math/BigInteger;
    if-nez v21, :cond_2

    const/4 v12, 0x0

    move-object/from16 v16, v12

    goto :goto_2

    .line 146
    :cond_2
    nop

    .line 147
    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    .line 146
    invoke-static {v12, v13}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v12

    move-object/from16 v16, v12

    :goto_2
    nop

    .line 148
    .local v16, "leadDisplayAddress":Landroid/view/DisplayAddress;
    nop

    .line 150
    move-object v12, v10

    move-object v10, v11

    .end local v11    # "address":Landroid/view/DisplayAddress;
    .local v10, "address":Landroid/view/DisplayAddress;
    .local v12, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual {v12}, Lcom/android/server/display/config/layout/Display;->isDefaultDisplay()Z

    move-result v11

    .line 151
    move-object v13, v12

    .end local v12    # "d":Lcom/android/server/display/config/layout/Display;
    .local v13, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual {v13}, Lcom/android/server/display/config/layout/Display;->isEnabled()Z

    move-result v12

    .line 152
    move-object v14, v13

    .end local v13    # "d":Lcom/android/server/display/config/layout/Display;
    .local v14, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual {v14}, Lcom/android/server/display/config/layout/Display;->getDisplayGroup()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v14

    .end local v14    # "d":Lcom/android/server/display/config/layout/Display;
    .local v17, "d":Lcom/android/server/display/config/layout/Display;
    iget-object v14, v1, Lcom/android/server/display/DeviceStateToLayoutMap;->mIdProducer:Lcom/android/server/display/layout/DisplayIdProducer;

    .line 156
    move-object/from16 v18, v17

    .end local v17    # "d":Lcom/android/server/display/config/layout/Display;
    .local v18, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/config/layout/Display;->getBrightnessThrottlingMapId()Ljava/lang/String;

    move-result-object v17

    .line 157
    move-object/from16 v19, v18

    .end local v18    # "d":Lcom/android/server/display/config/layout/Display;
    .local v19, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/display/config/layout/Display;->getRefreshRateZoneId()Ljava/lang/String;

    move-result-object v18

    .line 158
    move-object/from16 v20, v19

    .end local v19    # "d":Lcom/android/server/display/config/layout/Display;
    .local v20, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/display/config/layout/Display;->getRefreshRateThermalThrottlingMapId()Ljava/lang/String;

    move-result-object v19

    .line 159
    move-object/from16 v22, v20

    .end local v20    # "d":Lcom/android/server/display/config/layout/Display;
    .local v22, "d":Lcom/android/server/display/config/layout/Display;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/display/config/layout/Display;->getPowerThrottlingMapId()Ljava/lang/String;

    move-result-object v20

    .line 148
    invoke-virtual/range {v9 .. v20}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZLjava/lang/String;Lcom/android/server/display/layout/DisplayIdProducer;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v10    # "address":Landroid/view/DisplayAddress;
    .end local v15    # "position":I
    .end local v16    # "leadDisplayAddress":Landroid/view/DisplayAddress;
    .end local v21    # "leadDisplayPhysicalId":Ljava/math/BigInteger;
    .end local v22    # "d":Lcom/android/server/display/config/layout/Display;
    goto :goto_1

    .line 161
    :cond_3
    invoke-virtual {v9}, Lcom/android/server/display/layout/Layout;->postProcessLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    .end local v6    # "l":Lcom/android/server/display/config/layout/Layout;
    .end local v7    # "state":I
    .end local v9    # "layout":Lcom/android/server/display/layout/Layout;
    goto/16 :goto_0

    .line 136
    :cond_4
    nop

    .line 163
    .end local v0    # "layouts":Lcom/android/server/display/config/layout/Layouts;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 166
    .end local v4    # "in":Ljava/io/InputStream;
    goto :goto_6

    .line 130
    .restart local v4    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DeviceStateToLayoutMap;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_4
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    .line 163
    .end local v4    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DeviceStateToLayoutMap;
    .restart local p1    # "configFile":Ljava/io/File;
    :goto_5
    nop

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered an error while reading/parsing display layout config file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method size()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/server/display/DeviceStateToLayoutMap;->mLayoutMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
