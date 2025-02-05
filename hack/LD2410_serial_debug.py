import serial


def read_configuration(port="/dev/ttyUSB1", baudrate=115200):
    with serial.Serial(port, baudrate, timeout=1) as ser:
        # Enter command mode
        ser.write(b"\x6e\x03")
        if not ser.read(4) == b"\xfdFCFBFA":
            raise Exception("Failed to enter command mode")

        # Read firmware version
        ser.write(b"\x6e\x02\x00\x00\x04\x03\x02\x01")
        response = ser.read(8)
        if response[4:6] != b"\xa0\x01":
            raise Exception("Failed to read firmware version")

        # Extract version information
        major_version = int.from_bytes(response[6:8], byteorder="little")
        minor_version = int.from_bytes(response[8:10], byteorder="little")

        return {"major_version": major_version, "minor_version": minor_version}


if __name__ == "__main__":
    try:
        config = read_configuration()
        print(f"Firmware Version: {config['major_version']}.{config['minor_version']}")
    except Exception as e:
        print(e)
